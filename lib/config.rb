require 'yaml'

module And
  class Config
    def initialize
      path = File.join('.', 'config', 'paths.yaml')
      @file_path = Dir.home + YAML.load_file(path)['path']
    end

    def file_path
      @file_path
    end

    def top_level
      files = Dir.entries(file_path)
      files - ['.', '..']
    end
  end
end