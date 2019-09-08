module Rego
  Version = '3.0.0' unless defined?(Version)

  def Rego.version
    Rego::Version
  end

  def Rego.dependencies
    {
      'main'   => [ 'main'   , ' ~> 6.0'    ] , 
      'map'    => [ 'map'    , ' ~> 6.6'  ]   , 
      'listen' => [ 'listen' , '~> 3.0' ]     , 
    }
  end

  def Rego.libdir(*args, &block)
    @libdir ||= File.basename(File.expand_path(__FILE__).sub(/\.rb$/,''))
    args.empty? ? @libdir : File.join(@libdir, *args)
  ensure
    if block
      begin
        $LOAD_PATH.unshift(@libdir)
        block.call()
      ensure
        $LOAD_PATH.shift()
      end
    end
  end

  def Rego.load(*libs)
    libs = libs.join(' ').scan(/[^\s+]+/)
    Rego.libdir{ libs.each{|lib| Kernel.load(lib) } }
  end
end