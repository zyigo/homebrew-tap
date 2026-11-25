class Brewmax < Formula
  desc "Terminal UI for Homebrew that won't change Packages that are In Use"
  homepage "https://github.com/zyigo/brewmax"
  url "https://github.com/zyigo/brewmax/releases/download/v0.1.0/brewmax-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "50b146ece1be68bd4f18b9395094e22f70b9e3c14e3bb72b7365df98407b4928"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "brewmax"
  end

  test do
    # Must match what `brewmax --version` prints (src/main.rs).
    assert_equal "brewmax #{version}", shell_output("#{bin}/brewmax --version").strip
  end
end
