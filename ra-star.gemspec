# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ra-star}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stewart Matheson"]
  s.date = %q{2010-08-04}
  s.description = %q{A* pathfinding in ruby}
  s.email = %q{stew@rtmatheson.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/ra-star.rb",
     "lib/ra-star/map.rb",
     "lib/ra-star/node.rb",
     "lib/ra-star/path.rb",
     "ra-star.gemspec",
     "test/helper.rb",
     "test/test_map.rb",
     "test/test_node.rb",
     "test/test_path.rb"
  ]
  s.homepage = %q{http://github.com/stewartmatheson/ra-star}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A* pathfinding in ruby}
  s.test_files = [
    "test/helper.rb",
     "test/test_map.rb",
     "test/test_node.rb",
     "test/test_path.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

