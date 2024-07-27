class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.2.1"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos.tar.gz"
    sha256 "509fc47284d76eec357bb9b0268aee7df987f714e0137bafe576517a606c38e2"

  end
  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "c2feb1f1c1f3dcbce510268bb2a9f4dae626d7351e47c95325c9c9b2c5af1c14"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
