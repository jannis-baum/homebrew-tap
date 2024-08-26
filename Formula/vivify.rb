class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.4.0"
  license "GPL-3.0"

  on_macos do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos.tar.gz"
    sha256 "520c4e62d104d8074eaf4de6c146fee2d65990c58ff8b5c4b341bd5a4ee22a2b"

  end
  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "3344f9ca7c09f0d769ff095ed14677100f2ebc9351fe73dfb533895d8776fbc6"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
