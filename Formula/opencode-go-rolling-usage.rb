# Homebrew formula for opencode-go-rolling-usage.
#
# The url + sha256 below are updated automatically by the
# "Bump Homebrew formula" workflow in the main repository
# (github.com/Caertos/opencode-go-rolling-usage) after each npm release.
class OpencodeGoRollingUsage < Formula
  desc "OpenCode Go rolling/weekly/monthly quota in your terminal and TUI sidebar"
  homepage "https://github.com/Caertos/opencode-go-rolling-usage"
  url "https://registry.npmjs.org/opencode-go-rolling-usage/-/opencode-go-rolling-usage-0.1.0.tgz"
  sha256 "REPLACE_WITH_TARBALL_SHA256"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ogr --version")
  end
end
