class Data64 < Formula
  desc "Convert any file to Base64 encoded data URI scheme."
  homepage "https://github.com/svendahlstrand/data64"
  url "https://github.com/svendahlstrand/data64/archive/v0.2.0.tar.gz"
  sha256 "fdc0a272d1193b3cf4f64d8ad17d2b77f3734b6811e1499213c6edec11a53a85"

  def install
    bin.install "bin/data64"
  end
end
