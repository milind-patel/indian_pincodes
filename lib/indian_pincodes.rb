require 'yaml'
# @return Details like state name, city name, post office based on pincode.
module IndianPincodes
  VERSION = '0.0.1'
  class << self
    # Search details from pincode
    def search(code)
      db[code]
    end
    # Find details from yaml file
    def db
      @db ||= begin
        this_file = File.expand_path(File.dirname(__FILE__))
        india_data = File.join(this_file, 'data/INDIA.yml')
        YAML.load(File.open(india_data))
      end
    end
    # Preload yaml file 
    def load
      db
    end
  end
end
