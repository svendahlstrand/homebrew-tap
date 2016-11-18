class Supervision < Formula
  desc "Install and switch between multiple versions of SiteVision."
  homepage "https://github.com/svendahlstrand/supervision"
  url "https://github.com/svendahlstrand/supervision/archive/v0.6.0.tar.gz"
  sha256 "5f0d8780651166ed7ff05de3ecc00b09293b2e41bba6197258ccb95c42f178df"

  def install
    bin.install "bin/supervision"
  end
end
