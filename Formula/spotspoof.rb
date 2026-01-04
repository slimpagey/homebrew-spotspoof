class Spotspoof < Formula
  desc "Domain spoofing detection for security automation workflows"
  homepage "https://github.com/slimpagey/spotspoof-cli"
  url "https://github.com/slimpagey/spotspoof-cli/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "902f0a684047fd4c13221913d38307d8dcbf68e0465d5ac01bcff1a068488073"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "SpotSpoof CLI", shell_output("#{bin}/spotspoof --help")
  end
end