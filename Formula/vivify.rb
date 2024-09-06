class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.6.0"
  license "GPL-3.0"

  depends_on "libuv"
  depends_on "brotli"
  depends_on "c-ares"
  depends_on "icu4c"

  on_macos do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos.tar.gz"
    sha256 "f3859e1c99c47f14aa51db5cfcdc08e56f6b598e495ad50700859e49b2901692"
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "ff6f69388c2b31770ddbcb06cc1e70d3927d2ee5d9058db0aaf78305875c3269"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
