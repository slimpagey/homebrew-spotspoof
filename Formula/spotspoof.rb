class Spotspoof < Formula
  desc "Domain spoofing detection for security automation workflows"
  homepage "https://github.com/slimpagey/spotspoof-cli"
  url "https://github.com/slimpagey/spotspoof-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e7dc7a36c834ff7a0c43c3789c561f786b488bd2a0b59ee270a58a5e224392e6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "SpotSpoof CLI", shell_output("#{bin}/spotspoof --help")
  end
end