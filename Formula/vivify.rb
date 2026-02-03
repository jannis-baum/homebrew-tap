class Vivify < Formula
  desc "Live viewer for Markdown, HTML, Jupyter Notebooks & more"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.13.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-arm.tar.gz"
      sha256 "3d9966f0aa430a89c25ae52d981856ae28a00bb5638ea27180133a7e3ef0fbb9"
    end
    on_intel do
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-x86.tar.gz"
      sha256 "3a81fd62b1d2a725aeb911275e20877aea3c65ce6d30c4e4423ca71a2e71f77f"
    end
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "12274585af8ee02783e780fd09f764afc4db5b6b9c15ba1247c1fca09b510418"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
