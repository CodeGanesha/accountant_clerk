# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'accountant_clerk'
  s.version     = '0.9'
  s.summary     = 'Simple reports for rubyclerks'
  s.description     = 'Simple reports that are not so simple anymore and let you analyse your shops performance'
  s.required_ruby_version = '>= 2.2'
  s.homepage     = 'https://github.com/rubyclerks/accountant_clerk'

  s.author            = 'Torsten Ruger'
  s.email             = 'torsten@villataika.fi'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_runtime_dependency 'office_clerk', '~> 1.1'
  s.add_runtime_dependency 'flot-rails', '~> 0.0.6'
end
