class Vivify < Formula
  desc "Live viewer for Markdown, HTML, Jupyter Notebooks & more"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.11.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-arm.tar.gz"
      sha256 "61bad94726abe4490c1ca3cadff4df80faa6cfa6cb15e63e20f6b077c144ed48"
    end
    on_intel do
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-x86.tar.gz"
      sha256 "88b55517b28950be7184e0d0429ccad5f7268f83071f9fd48324a0ed22adae81"
    end
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "a961efc65006bc1cb30842076c284cd748e79c6592d2c1e2046e8aba1815efa1"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
