
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "daslabs/version"

Gem::Specification.new do |spec|
  spec.name          = "daslabs"
  spec.version       = DasLabs::VERSION
  spec.authors       = ["Arunabh Das"]
  spec.email         = ["arunabhdas@gmail.com"]

  spec.summary       = %q{Tools for streamlining and warpspeeding development for leapfrog scenarios}
  spec.description   = %q{Tools for streamlining and warpspeeding development for leapfrog scenarios}
  spec.homepage      = "https://github.com/arunabhdas/daslabs"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.files = Dir['{lib,assets,bin}/**/**'].reject { |f| f.end_with?('.gif') }
  spec.executables   << 'daslabs'
  spec.require_paths = ["lib"]

  # Declare that the Gem is compatible with
  # version 2.0 or greater
  spec.required_ruby_version = ">= 2.0"

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 10.0"

  # Usage: spec.add_runtime_dependency "[gem name]", [[version]]
  spec.add_runtime_dependency "nokogiri", ">= 1.5.0"

end
