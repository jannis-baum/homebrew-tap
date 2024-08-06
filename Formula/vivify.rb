class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.3.1"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos.tar.gz"
    sha256 "179e83c0255b736bfc8ed1a9f21900d16631e99fa7d63fa22c95e250c1edbb52"

  end
  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "e7ac880756d9d21ef81f75a60f4ce4489a6d3c5ea1df40cf8233b437f4bc2e72"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
