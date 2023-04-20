class HugoAT0910 < Formula
  desc "Configurable static site generator"
  homepage "https://gohugo.io/"
  url "https://github.com/gohugoio/hugo/archive/v0.91.0.tar.gz"
  sha256 "d1401c58fe0aa78cecca4d28e6b204151e8960b0c0d95a2c48f3ddd4a073da9e"
  license "Apache-2.0"
  head "https://github.com/gohugoio/hugo.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-tags", "extended"

    mv bin/"hugo@0.91.0", bin/"hugo91"

    # Build bash completion
    system bin/"hugo91", "gen", "autocomplete", "--completionfile=hugo.sh"
    bash_completion.install "hugo.sh"

    # Build man pages; target dir man/ is hardcoded :(
    (Pathname.pwd/"man").mkpath
    system bin/"hugo91", "gen", "man"
    man1.install Dir["man/*.1"]
  end

  test do
    site = testpath/"hops-yeast-malt-water"
    system "#{bin}/hugo91", "new", "site", site
    assert_predicate testpath/"#{site}/config.toml", :exist?
  end
end
