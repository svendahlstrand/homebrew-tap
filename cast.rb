class Cast < Formula
  desc "Resize applications to fit my screencasting video resolution."
  homepage "https://github.com/svendahlstrand/cast"
  url "https://github.com/svendahlstrand/cast/archive/v0.1.0.tar.gz"
  sha256 "81993be155f22bbfcd8679fb52b8a3e496c3bd1e4166f7dd9ddea467bbd739d2"

  def install
    bin.install "bin/cast"
  end
end
