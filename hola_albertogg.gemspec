Gem::Specification.new do |s|
  s.name        = 'hola_albertogg'
  s.version     = '0.1.0'
  s.executables << 'hola_albertogg'
  s.license     = 'MIT'
  s.date        = '2013-04-17'
  s.summary     = "Hola albertogg gem!"
  s.description = "A simple hello world gem"
  s.authors     = ["Alberto Grespan"]
  s.email       = 'albertogrespan@gmail.com'
  s.files       = %w[
    bin/hola_albertogg
    lib/hola_albertogg.rb
    lib/hola_albertogg/translator.rb
    lib/hola_albertogg/const.rb
    hola_albertogg.gemspec
  ]
  s.homepage    = 'https://github.com/albertogg/albertogggem'
  s.require_paths = %w[lib]
end
