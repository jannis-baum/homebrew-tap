class Vivify < Formula
  desc "Bring your Markdown to life"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.10.0-1"
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
      depends_on "simdutf"
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-arm.tar.gz"
      sha256 "69c6f2c51568db7bd658ef23974fca969601b7d793d917a246d9256fa8a7c192"
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
      sha256 "03a54f9fb260c128b5d9aebad4df54b8b4d3a01043809765dd8d6202cd680635"
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
    sha256 "f24b542dcf7bdc0333dba44745e7570fff058e775eed633287eeb54d87df7121"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
