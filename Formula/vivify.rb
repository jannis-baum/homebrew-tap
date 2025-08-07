class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.8.2"
  license "GPL-3.0"

  # node dependencies, see https://formulae.brew.sh/formula/node
  depends_on "brotli"
  depends_on "c-ares"
  depends_on "icu4c@77"
  depends_on "libnghttp2"
  depends_on "libnghttp3"
  depends_on "libngtcp2"
  depends_on "libuv"
  depends_on "simdjson"
  depends_on "zstd"

  on_macos do
    on_arm do
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-arm.tar.gz"
      sha256 "add79c73eb6cef72bdc810f6760e747220819fdb5d345acd0de4953b6329023a"
    end
    on_intel do
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-x86.tar.gz"
      sha256 "03fc25d5e0d10dd31cc3554c6142fc27fbee97d028396679bfb36763f04e1323"
    end
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "8361619474ee492595baa108a300cec339d447ec50d259ef75ad6ead84e0d3c4"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
