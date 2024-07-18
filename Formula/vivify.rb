class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.1.6"
  license "GPL-3.0"

  depends_on "jq"

  on_macos do
    url "https://github.com/jannis-baum/Vivify/releases/download/v0.1.6/vivify-macos.zip"
    sha256 "536a82da191e66f773dc88643a241639ce1765e8f015921858515f988cfb34c7"

    def install
      bin.install "macos/vivify-server"
      bin.install "macos/viv"
    end
  end
  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v0.1.6/vivify-linux.zip"
    sha256 "7a4997224aaca0946bb2ef217a865a55014bb34d874b851f1b848758e4f35422"

    def install
      bin.install "linux/vivify-server"
      bin.install "linux/viv"
    end
  end
end
