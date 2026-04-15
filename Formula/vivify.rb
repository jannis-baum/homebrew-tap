class Vivify < Formula
  desc "Live viewer for Markdown, HTML, Jupyter Notebooks & more"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.14.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-arm.tar.gz"
      sha256 "44b3e32590ec4b66ac2cafde0da02734d1362b535fcb239a41e52e1ff336c437"
    end
    on_intel do
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-x86.tar.gz"
      sha256 "83e7f5e69a3b3af98d43f70007abb57f4ada386d024d3b995db8f91dadd87e1d"
    end
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "f88696eec6eb9f10a0ca7ac4a1803d5617e31b8b65b831f992108f983ed8b1b2"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
