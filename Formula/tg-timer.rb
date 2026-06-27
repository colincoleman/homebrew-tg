class TgTimer < Formula
  desc "Program for timing mechanical watches"
  homepage "https://github.com/colincoleman/tg"
  url "https://github.com/colincoleman/tg/releases/download/v0.7.0-tpiepho-cc.8/tg-timer-0.7.0-tpiepho-cc.8.tar.gz"
  sha256 "5f1cf7833536d582821bae97cdd3c8bac8b638a48c025330ac04efdf057cc260"
  license "GPL-2.0-only"

  depends_on "gtk+3"
  depends_on "portaudio"
  depends_on "fftw"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-silent-rules", "--without-python"
    system "make", "install"
  end
end
