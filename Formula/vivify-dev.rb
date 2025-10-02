class VivifyDev < Formula
  desc "Live viewer for Markdown, HTML, Jupyter Notebooks & more"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.10.0"
  license "GPL-3.0"

  depends_on "node"
  depends_on "yarn"

  url "https://github.com/jannis-baum/Vivify/archive/refs/tags/v#{version}.zip"
  sha256 "3d9ad60cbd30d2dd85726ea9bac9c62987e4477c38355de44bf0e21830bfdb6d"

  def install
    system "yarn"
    system "./configure", prefix
    system "make", "install"
  end
end
