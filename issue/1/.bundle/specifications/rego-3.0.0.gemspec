# -*- encoding: utf-8 -*-
# stub: rego 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rego".freeze
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ara T. Howard".freeze]
  s.date = "2019-07-30"
  s.description = "description: rego kicks the ass".freeze
  s.email = "ara.t.howard@gmail.com".freeze
  s.executables = ["rego".freeze]
  s.files = ["bin/rego".freeze]
  s.homepage = "https://github.com/ahoward/rego".freeze
  s.licenses = ["Ruby".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "rego".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<main>.freeze, ["~> 6.0"])
      s.add_runtime_dependency(%q<map>.freeze, ["~> 6.6"])
      s.add_runtime_dependency(%q<listen>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<main>.freeze, ["~> 6.0"])
      s.add_dependency(%q<map>.freeze, ["~> 6.6"])
      s.add_dependency(%q<listen>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<main>.freeze, ["~> 6.0"])
    s.add_dependency(%q<map>.freeze, ["~> 6.6"])
    s.add_dependency(%q<listen>.freeze, ["~> 3.0"])
  end
end