class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.9.0"
  license "GPL-3.0"

  # dependencies are from node, see https://formulae.brew.sh/formula/node

  on_macos do
    on_arm do
      depends_on "brotli"
      depends_on "c-ares"
      depends_on "icu4c@77"
      depends_on "libnghttp2"
      depends_on "libnghttp3"
      depends_on "libngtcp2"
      depends_on "libuv"
      depends_on "openssl@3"
      depends_on "simdjson"
      depends_on "sqlite"
      depends_on "uvwasi"
      depends_on "zstd"
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-arm.tar.gz"
      sha256 "99add4e59001e5456d918d42af1128f98a9e4d785a1e611ca8d68ee556f94bb4"
    end
    on_intel do
      depends_on "brotli"
      depends_on "c-ares"
      depends_on "icu4c@77"
      depends_on "libnghttp2"
      depends_on "libnghttp3"
      depends_on "libngtcp2"
      depends_on "libuv"
      depends_on "openssl@3"
      depends_on "sqlite"
      depends_on "zstd"
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-x86.tar.gz"
      sha256 "a8adeb5b1c198aa89db32ae638743ac426026ee412e28034540e93e5431acf1d"
    end
  end

  on_linux do
    depends_on "brotli"
    depends_on "c-ares"
    depends_on "icu4c@77"
    depends_on "libnghttp2"
    depends_on "libnghttp3"
    depends_on "libngtcp2"
    depends_on "libuv"
    depends_on "openssl@3"
    depends_on "simdjson"
    depends_on "sqlite"
    depends_on "uvwasi"
    depends_on "zstd"
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "81feafe5730e7ba7f10ba659d4da5e82ecda4b0f9f3360ca42245292deadaa27"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
