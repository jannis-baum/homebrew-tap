class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.6.1"
  license "GPL-3.0"

  # node dependencies, see https://formulae.brew.sh/formula/node
  depends_on "brotli"
  depends_on "c-ares"
  depends_on "icu4c@76"
  depends_on "libnghttp2"
  depends_on "libuv"
  depends_on "openssl@3"

  on_macos do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos.tar.gz"
    sha256 "6f0547223aead8bc48c194129dedf05d987f80f8f687bdea17c8a5297e8fb4c1"
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "a1a5a124e17ec510367b42c6367ddadef2936b216d51a5bb09f4b02e21b7a1a9"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
