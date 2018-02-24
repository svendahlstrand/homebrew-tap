class Data64 < Formula
  desc "Convert any file to Base64 encoded data URI scheme."
  homepage "https://github.com/svendahlstrand/data64"
  url "https://github.com/svendahlstrand/data64/archive/v0.1.0.tar.gz"
  sha256 "b703ceb79f676ffd41589f13cd590b5b37549cd3c5af6be68913442cf410065b"

  def install
    bin.install "bin/data64"
  end
end
