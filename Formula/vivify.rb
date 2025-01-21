class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.6.4"
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
    sha256 "3d4da6bf6bf1325825b0e1a6825be0076eef325ab9e659729c3cc6c664ccd321"
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "3791de104413a24bd77b07ad445a3adc447a4eabe059f73d66f982ca6ab4133d"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
