require_relative "lib/phrase/ota/version"

Gem::Specification.new do |spec|
  spec.name = "phrase-ota-i18n"
  spec.version = Phrase::Ota::VERSION
  spec.authors = ["Phrase"]
  spec.email = ["support@phrase.com"]

  spec.summary = "Phrase OTA for Rails i18n"
  spec.description = "Phrase OTA for Rails i18n"
  spec.homepage = "https://github.com/phrase/phrase-ota-i18n"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0.0")

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "i18n"
  spec.add_dependency "faraday"
  spec.add_dependency "faraday-follow_redirects"
end
