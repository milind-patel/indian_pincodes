lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zip-codes'

Gem::Specification.new do |s|
  s.name        = 'indian-pincodes'
  s.version     = '0.0.1'
  s.date        = '2016-10-04'
  s.summary     = "A simple gem to search details like city, state, post office,taluka name, district name,head office and sub office details from pincode"
  s.description = "Gem to find pincode details inside India"
  s.authors     = ["Milind Patel"]
  s.email       = '66.milind@gmail.com'
  s.files       = ["lib/indian_pincodes.rb"]
  s.homepage    = 'http://rubygems.org/gems/indian-pincodes'
  s.license     = 'MIT'

  s.files         = ["lib/data/INDIA.yml","LICENSE.txt", "README.md", "lib/indian_pincodes.rb", "indian_pincodes.gemspec"]#`git ls-files`.split($RS)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rake','~> 0'
end
