class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.6.2"
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
    sha256 "7132d3f4abf26281f429a92c47c158c6e76df8b439b1b856a271842a579f7824"
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "7a2db43159f45034ad037d168cde5529041449067e600ef61754511db1151b16"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end

  test do
    system "#{bin}/viv", "--version"
  end
end
