class TgTimer < Formula
  desc "Program for timing mechanical watches"
  homepage "https://github.com/colincoleman/tg"
  url "https://github.com/colincoleman/tg/releases/download/v0.7.0-tpiepho-cc.6/tg-timer-0.7.0-tpiepho-cc.6.tar.gz"
  sha256 "c65b1602280ed088f7fc78503e48523cc1de8248fea8c2dd7b477e97454ed0e0"
  license "GPL-2.0-only"

  depends_on "gtk+3"
  depends_on "portaudio"
  depends_on "fftw"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-silent-rules", "--without-python"
    system "make", "install"
  end
end
