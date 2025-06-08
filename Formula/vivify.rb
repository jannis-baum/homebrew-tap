class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.8.1"
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
    sha256 "a4e057804627574ffeea1f235537d178950441ab53f669206d89e16126570069"
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "cf5daefbcfd9faca7ef9e42f6a70fce4f41f99f1e613dd8dea5913a83018f7b3"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
