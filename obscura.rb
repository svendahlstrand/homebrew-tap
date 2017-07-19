class Obscura < Formula
  desc "Salvage your beautiful photographs from a Game Boy Camera save file."
  homepage "https://github.com/svendahlstrand/obscura"
  url "https://github.com/svendahlstrand/obscura/archive/v0.5.0.tar.gz"
  sha256 "bceb87413c202c90284e959ef56a7c6f69793128d004bf3c76c910da12290738"

  def install
    system "make"

    bin.install "bin/obscura"
  end
end
