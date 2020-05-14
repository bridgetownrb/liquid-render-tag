
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "liquid-render-tag/version"

Gem::Specification.new do |spec|
  spec.name          = "liquid-render-tag"
  spec.version       = LiquidRenderTag::VERSION
  spec.authors       = "Bridgetown Team"
  spec.email         = "maintainers@bridgetownrb.com"

  spec.summary       = %q{Backported Render tag and related changes from Liquid master to work with 4.0.3}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/bridgetownrb/liquid-render-tag"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "liquid", "~> 4.0.3"
end
