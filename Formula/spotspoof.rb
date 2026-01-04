class Spotspoof < Formula
  desc "Domain spoofing detection for security automation workflows"
  homepage "https://github.com/slimpagey/spotspoof-cli"
  url "https://github.com/slimpagey/spotspoof-cli/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "6fbdec4319896154aca3e2d5c55f6f0dce920a46d1b149f6d909aad087b6330f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "SpotSpoof CLI", shell_output("#{bin}/spotspoof --help")
  end
end