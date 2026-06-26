class TgTimer < Formula
  desc "Program for timing mechanical watches"
  homepage "https://github.com/colincoleman/tg"
  url "https://github.com/colincoleman/tg/releases/download/v0.7.0-tpiepho-cc.1/tg-timer-0.7.0-tpiepho-cc.1.tar.gz"
  sha256 "PLACEHOLDER"
  license "GPL-2.0-only"

  depends_on "gtk+3"
  depends_on "portaudio"
  depends_on "fftw"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-silent-rules"
    system "make", "install"
  end
end
