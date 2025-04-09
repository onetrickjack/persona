# -*- encoding: utf-8 -*-
# stub: rdf-vocab 3.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rdf-vocab".freeze
  s.version = "3.3.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ruby-rdf/rdf-vocab/issues", "documentation_uri" => "https://ruby-rdf.github.io/rdf-vocab", "homepage_uri" => "https://github.com/ruby-rdf/rdf-vocab", "mailing_list_uri" => "https://lists.w3.org/Archives/Public/public-rdf-ruby/", "source_code_uri" => "https://github.com/ruby-rdf/rdf-vocab" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Chandek-Stark".freeze, "Aaron Coburn".freeze, "Gregg Kellogg".freeze]
  s.date = "2024-11-03"
  s.description = "Defines several standard RDF vocabularies".freeze
  s.email = "public-rdf-ruby@w3.org".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/ruby-rdf/rdf-vocab".freeze
  s.licenses = ["Unlicense".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0".freeze)
  s.rubygems_version = "3.5.22".freeze
  s.summary = "A library of RDF vocabularies".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rdf>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<haml>.freeze, ["~> 6.3".freeze])
  s.add_development_dependency(%q<erubis>.freeze, ["~> 2.7".freeze])
  s.add_development_dependency(%q<json-ld>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<json-schema>.freeze, ["~> 4.3".freeze])
  s.add_development_dependency(%q<jsonpath>.freeze, ["~> 1.1".freeze])
  s.add_development_dependency(%q<ld-patch>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<nokogiri>.freeze, ["~> 1.16".freeze, ">= 1.16.5".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.2".freeze])
  s.add_development_dependency(%q<rdf-ordered-repo>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-rdfa>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-rdfxml>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-reasoner>.freeze, ["~> 0.8".freeze])
  s.add_development_dependency(%q<rdf-turtle>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.13".freeze])
  s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.3".freeze])
  s.add_development_dependency(%q<uri>.freeze, ["~> 0.13".freeze])
  s.add_development_dependency(%q<uuidtools>.freeze, ["~> 2.2".freeze])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.9".freeze])
end
