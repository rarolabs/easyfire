# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "easyfire/version"

Gem::Specification.new do |spec|
  spec.name          = "easyfire"
  spec.version       = Easyfire::VERSION
  spec.authors       = ["Rodrigo Sol"]
  spec.email         = ["rodrigo@rarolabs.com.br"]

  spec.summary       = %q{Firebase models descriptions}
  spec.description   = %q{An abstraction for firebase realtime database usage }
  spec.homepage      = "http://www.rarolabs.com.br"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency "thor"
  spec.add_dependency "activesupport"
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "byebug"
end
