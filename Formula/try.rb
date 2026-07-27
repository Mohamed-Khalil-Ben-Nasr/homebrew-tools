class Try < Formula
  desc "Inspect a command's effects before modifying your live system"
  homepage "https://github.com/binpash/try"
  url "https://github.com/Mohamed-Khalil-Ben-Nasr/try/archive/refs/tags/v0.2.0-1.tar.gz"
  sha256 "68e3700d364f2cc309b43038937a6448cb64b08cf4d539b111c348c5281f0a97"
  license "MIT"

  depends_on "autoconf" => :build
  depends_on "pandoc" => :build

  def install
    system "autoconf"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "#{bin}/try", "--help"
  end
end
