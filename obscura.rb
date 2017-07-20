class Obscura < Formula
  desc "Salvage your beautiful photographs from a Game Boy Camera save file."
  homepage "https://github.com/svendahlstrand/obscura"
  url "https://github.com/svendahlstrand/obscura/archive/v0.6.0.tar.gz"
  sha256 "0ad1e28b12f85936279132fe0da0daaa08ce72bfe72a0854c25517908125b064"

  def install
    system "make"

    bin.install "bin/obscura"
  end

  test do
    assert shell_output("obscura").include?("Usage: "), "Should show usage if no parameter is present."
  end
end
