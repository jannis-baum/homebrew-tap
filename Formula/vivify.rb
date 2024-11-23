class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.6.3"
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
    sha256 "4968e35ab0d134bc3701590fa6b376071306f0a6c345dfb89fce2ae25f30fd6a"
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "b8077e2c7aab6486571c4f80bb10cfec0f33b7141580d81612984d8462bbfdd3"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
