class TgTimer < Formula
  desc "Program for timing mechanical watches"
  homepage "https://github.com/colincoleman/tg"
  url "https://github.com/colincoleman/tg/releases/download/v0.7.0-tpiepho-cc.5/tg-timer-0.7.0-tpiepho-cc.5.tar.gz"
  sha256 "90c2d209cd2711c9ef29fff51ea2baf103159a9d90dbfd043c9c9ee8884c2fcd"
  license "GPL-2.0-only"

  depends_on "gtk+3"
  depends_on "portaudio"
  depends_on "fftw"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-silent-rules", "--without-python"
    system "make", "install"
  end
end
