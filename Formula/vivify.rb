class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.8.0"
  license "GPL-3.0"

  # node dependencies, see https://formulae.brew.sh/formula/node
  depends_on "brotli"
  depends_on "c-ares"
  depends_on "icu4c@77"
  depends_on "libnghttp2"
  depends_on "libuv"
  depends_on "openssl@3"

  on_macos do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos.tar.gz"
    sha256 "58258904808fecddea112b51da0ce1d774e4252ca4752c3767be8f2e5dd7d34d"
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "4c7ff4f1d6dee80bb87242b58ed4302a4b5ef5feb61dce9f80e84127a21377d0"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
