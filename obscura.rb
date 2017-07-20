class Obscura < Formula
  desc "Salvage your beautiful photographs from a Game Boy Camera save file."
  homepage "https://github.com/svendahlstrand/obscura"
  url "https://github.com/svendahlstrand/obscura/archive/v0.7.0.tar.gz"
  sha256 "ed487fd50c14201ea3e0dd5937355e0c4e5b880bab0ef4469ea7f93545939cad"

  head "https://github.com/svendahlstrand/obscura.git"

  def install
    system "make"

    bin.install "bin/obscura"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/obscura"), "Should show usage if no parameter is present."
  end
end
