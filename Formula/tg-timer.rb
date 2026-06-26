class TgTimer < Formula
  desc "Program for timing mechanical watches"
  homepage "https://github.com/colincoleman/tg"
  url "https://github.com/colincoleman/tg/releases/download/v0.7.0-tpiepho-cc.7/tg-timer-0.7.0-tpiepho-cc.7.tar.gz"
  sha256 "cc55741221d90b6814ff9fb46dbaff7dcb669da75489afda4b11a4d99722863b"
  license "GPL-2.0-only"

  depends_on "gtk+3"
  depends_on "portaudio"
  depends_on "fftw"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-silent-rules", "--without-python"
    system "make", "install"
  end
end
