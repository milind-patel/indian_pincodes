require 'yaml'
module IndianPincodes
  VERSION = '0.0.1'
  class << self
    def search(code)
      db[code]
    end
    def db
      @db ||= begin
        this_file = File.expand_path(File.dirname(__FILE__))
        india_data = File.join(this_file, 'data/INDIA.yml')
        YAML.load(File.open(india_data))
      end
    end
    def load
      db
    end
  end
end
