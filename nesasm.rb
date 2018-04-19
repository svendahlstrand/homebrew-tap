class Nesasm < Formula
  desc "Assembler for the Nintendo Entertainment System."
  head "https://github.com/camsaul/nesasm.git"

  def install
    system "cd ./source && make"
    bin.install "./nesasm"
  end
end
