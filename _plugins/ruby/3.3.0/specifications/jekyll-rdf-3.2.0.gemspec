# -*- encoding: utf-8 -*-
# stub: jekyll-rdf 3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-rdf".freeze
  s.version = "3.2.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Elias Saalmann".freeze, "Christian Frommert".freeze, "Simon Jakobi".freeze, "Arne Jonas Pr\u00E4ger".freeze, "Maxi Bornmann".freeze, "Georg Hackel".freeze, "Eric F\u00FCg".freeze, "Sebastian Z\u00E4nker".freeze, "Natanael Arndt".freeze, "Simon Bin".freeze, "Jan Beckert".freeze]
  s.date = "2022-02-28"
  s.description = "Generate static sites with Jekyll based on RDF data".freeze
  s.email = "arndt@informatik.uni-leipzig.de".freeze
  s.homepage = "https://github.com/AKSW/jekyll-rdf".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.5".freeze
  s.summary = "Hypertext Publication System for Templated Resource Rendering".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<linkeddata>.freeze, ["~> 3.2".freeze, ">= 3.2.0".freeze])
  s.add_runtime_dependency(%q<sparql-client>.freeze, ["~> 3.2".freeze, ">= 3.2.0".freeze])
  s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.1".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0".freeze])
  s.add_development_dependency(%q<rest-client>.freeze, ["~> 2.0".freeze, ">= 2.0.1".freeze])
  s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.8".freeze])
  s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<shoulda-context>.freeze, ["~> 1.1".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<pry-byebug>.freeze, ["~> 3.4".freeze])
  s.add_development_dependency(%q<rdoc>.freeze, ["~> 6.2".freeze, ">= 6.2.1".freeze])
  s.add_development_dependency(%q<jekyll-theme-jod>.freeze, ["~> 0.1.5".freeze])
  s.add_development_dependency(%q<kramdown-parser-gfm>.freeze, ["~> 1.1".freeze])
end
