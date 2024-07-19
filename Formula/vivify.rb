class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.2.0"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/jannis-baum/Vivify/releases/download/v0.2.0/vivify-macos.tar.gz"
    sha256 "75003b0399b81cb2010240b40a0d4b59c9a01cc387c42a1e562142ad668743f3"

  end
  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v0.2.0/vivify-linux.tar.gz"
    sha256 "91d2935d67c4ba2f2fbed3cace72df35a62a1b4ca40a5e75e1fbbd4e43563931"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
