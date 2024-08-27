class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.5.0"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos.tar.gz"
    sha256 "2e8e3bb3e7fdce2385b26c02aa6dc8fbb887a8fdf96d53c75992c6c2216655b4"
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "3b98716e0714f628184dc39ac58c3fb81dfe0754062f2a5adcef058c8830cacc"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
