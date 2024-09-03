class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.5.1"
  license "GPL-3.0"

  depends_on "libuv"
  depends_on "brotli"
  depends_on "c-ares"
  depends_on "icu4c"

  on_macos do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos.tar.gz"
    sha256 "434c04271bb90a7ddae84258c254bcdbb5ee0c7dcb6ea3cdac5c7602a14439a0"
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "ad147dc8a853a80f3b7e4750d7fa6542f82d3527c145530e9d0a374312e7cdc4"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
