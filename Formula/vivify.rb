class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.3.0"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos.tar.gz"
    sha256 "24617d3cbaca4fd0cd5875906b3796a13664b424e502cce8e72a1d9750c55e5f"

  end
  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "65d73ab650670a07f5a77f004df0749150b32d5a8aa842955e10b60ba021babc"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
