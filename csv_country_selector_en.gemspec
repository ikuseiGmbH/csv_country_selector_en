# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "csv_country_selector_en/version"

Gem::Specification.new do |spec|
  spec.name          = "csv_country_selector_en"
  spec.version       = CsvCountrySelectorEn::VERSION
  spec.authors       = ["Daniel Molnar"]
  spec.email         = ["dm@ikusei.de"]

  spec.summary       = %q{Provide helpers and selectors for an English country and language list based on a csv file.}
  spec.description   = %q{Provide helpers and selectors for an English country and language list based on a csv file. Based on: https://github.com/ikuseiGmbH/csv_country_selector}
  spec.homepage      = "https://github.com/ikuseiGmbH/csv_country_selector_en"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
