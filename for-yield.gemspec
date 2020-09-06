require_relative 'lib/for/yield/version'

Gem::Specification.new do |spec|
  spec.name          = "for-yield"
  spec.version       = For::Yield::VERSION
  spec.authors       = ["Noah Matisoff"]
  spec.email         = ["noahmatisoff@hey.com"]

  spec.summary       = "Unwrap optional types using for/yield"
  spec.description   = "Similar to Scala's for comprehension, this gem provides syntax for unwrapping homogeneous container type instances."
  spec.homepage      = "https://github.com/noahmatisoff/for-yield"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/noahmatisoff/for-yield"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
