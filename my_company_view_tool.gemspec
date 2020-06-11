require_relative 'lib/my_company_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "my_company_view_tool"
  spec.version       = MyCompanyViewTool::VERSION
  spec.authors       = ["Javi"]
  spec.email         = ["highavoc@yahoo.es"]

  spec.summary       = %q{Module for creating foot text in web pages}
  spec.description   = %q{This module has methods in order to include a copyright text at the bottom of web pages}
  spec.homepage      = "http://www.example.com"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://www.example.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://www.example.com"
  spec.metadata["changelog_uri"] = "https://www.example.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
