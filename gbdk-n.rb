class GbdkN < Formula
  desc "Libraries for modern Game Boy development using C and the SDCC compiler."
  homepage "https://github.com/andreasjhkarlsson/gbdk-n"
  url "https://github.com/andreasjhkarlsson/gbdk-n/archive/aaf114f47a218f7e5f010a666f9cdb7c03c1cf57.tar.gz"
  version "2.96"
  sha256 "a9663f03111873e3b5bb02ac7ed943109c354adda9cafdf7c80ac078eaa4a787"

  depends_on "sdcc"

  def install
    system "make"
    pkgshare.install "include", "lib"
  end

  test do
    (testpath/"game.c").write <<-EOS.undent
      #include <gb/gb.h>
      #include <gb/drawing.h>

      void main() {
        gprintf("Hello Game Boy!");
      }
    EOS

    system "sdcc -mgbz80 --no-std-crt0 -I \"#{pkgshare}/include\" -I \"#{pkgshare}/include/asm\" -L \"#{pkgshare}/lib\" -l gb.lib game.c"
  end
end
