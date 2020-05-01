require_relative 'lib/sg_delivery_slot_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "sg_delivery_slot_checker"
  spec.version       = SgDeliverySlotChecker::VERSION
  spec.authors       = ["Vincent Paca"]
  spec.email         = ["vincent.paca@gmail.com"]

  spec.authors       = ["Vincent Paca"]
  spec.email         = ["vincent.paca@gmail.com"]

  spec.summary       = "Checks for available delivery slots in Singapore grocery stores"
  spec.description   = "Checks for available delivery slots in Singapore grocery stores"
  spec.homepage      = "https://github.com/vincentpaca/sg_delivery_slot_checker"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/vincentpaca/sg_delivery_slot_checker"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry', '~>  0.10.3'
  spec.add_development_dependency 'pry-remote', '~> 0.1.8'
  spec.add_development_dependency 'pry-nav', '~>  0.3.0'

  spec.add_runtime_dependency 'http', '~> 4.0'
end
