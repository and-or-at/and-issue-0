require 'yaml'

module And
  class Config
    def initialize
      path = File.join('.', 'config', 'paths.yaml')
      @file_path = YAML.load_file(path)
    end

    def file_path
      @file_path['path']
    end

    def top_level
      files = Dir.entries(file_path)
      files - ['.', '..']
      require 'pry'; binding.pry
    end

  end
end