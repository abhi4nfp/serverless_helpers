lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "serverless_helpers/version"

Gem::Specification.new do |spec|
  spec.name          = "serverless_helpers"
  spec.version       = ServerlessHelpers::VERSION
  spec.authors       = ["Jack M"]
  spec.email         = ["jack.mangels@nfp.com"]

  spec.summary       = %q{Helper objects and functions for quickly creating serverless Ruby project.}
  spec.description   = %q{Common helpers for creating serverless Ruby project.}
  spec.homepage      = "https://github.com/International-Ins/serverless_helpers"
  spec.license       = "MIT"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/International-Ins/serverless_helpers"
  spec.metadata["changelog_uri"] = "https://github.com/International-Ins/serverless_helpers/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  # Required by Avro Turf for mocking tests.
    spec.add_development_dependency "sinatra"
    spec.add_development_dependency "webmock"
  spec.add_development_dependency "byebug"

  spec.add_dependency "activesupport", "~> 6.0"
  spec.add_dependency "dry-configurable", "~> 0.8"
  spec.add_dependency "avro_turf", "~> 0.11"
end
