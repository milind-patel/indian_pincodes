lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'indian-pincodes'
require 'yard'

Gem::Specification.new do |s|
  s.name        = 'indian-pincodes'
  s.version     = '0.0.2'
  s.date        = '2016-10-04'
  s.summary     = "Gem to find pincode details inside India"
  s.description = "A simple gem to search details like city, state, post office,taluka name, district name,head office and sub office details from pincode in India"
  s.authors     = ["Milind Patel"]
  s.email       = '66.milind@gmail.com'
  s.files       = ["lib/indian_pincodes.rb"]
  s.homepage    = 'http://rubygems.org/gems/indian-pincodes'
  s.license     = 'MIT'
  s.files         = ["lib/data/INDIA.yml","LICENSE.txt", "README.md", "lib/indian_pincodes.rb", "indian_pincodes.gemspec"]#`git ls-files`.split($RS)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.metadata["yard.run"] = "yri"
  s.post_install_message = "Thanks for installing indian-pincodes!"
  s.required_ruby_version = '>= 1.8.6'
  s.extra_rdoc_files = ['README']
  s.homepage = 'https://github.com/milind-patel/indian_pincodes'
  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rake','~> 0'
end
