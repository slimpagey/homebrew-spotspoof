class Spotspoof < Formula
  desc "Domain spoofing detection for security automation workflows"
  homepage "https://github.com/slimpagey/spotspoof-cli"
  url "https://github.com/slimpagey/spotspoof-cli/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "d2efc86bf2d0de228209a6540f3b0061167bd7375da85e2411be7fa540e23f2a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "SpotSpoof CLI", shell_output("#{bin}/spotspoof --help")
  end
end