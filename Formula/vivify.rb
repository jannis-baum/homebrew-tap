class Vivify < Formula
  desc "Live viewer for Markdown, HTML, Jupyter Notebooks & more"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.10.1"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-arm.tar.gz"
      sha256 "470a1f7061472517dad886c88bd5b0963449f2c6d4e85ce3f01d5d2dfc1c4571"
    end
    on_intel do
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-x86.tar.gz"
      sha256 "03ec463358ee9d108298a72df226c8d8f07c835184c17511ae339c3e15b40b71"
    end
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "349e17de3646368bd69c47282bba66b2812c188584a6a1597a65ce3f6b576a42"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
