class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.7.0"
  license "GPL-3.0"

  # node dependencies, see https://formulae.brew.sh/formula/node
  depends_on "brotli"
  depends_on "c-ares"
  depends_on "icu4c@76"
  depends_on "libnghttp2"
  depends_on "libuv"
  depends_on "openssl@3"

  on_macos do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos.tar.gz"
    sha256 "a12544d05eb40537b2784233f7a341e1b5c063d20911fb97e574b0e46b89299c"
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "88081c6846f675c55e92e7acd0ab0d9b410b2adc4030d3269e542efa3e4e7514"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
