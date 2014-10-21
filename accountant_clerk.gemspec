# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'accountant_clerk'
  s.version     = '0.1'
  s.summary     = 'Simple reports that are not so simple anymore'
  s.required_ruby_version = '>= 1.9.3'

  s.author            = 'Torsten Ruger'
  s.email             = 'torsten@villataika.fi'

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_development_dependency 'rspec-rails'
end

