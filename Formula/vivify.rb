class Vivify < Formula
  desc "Live viewer for Markdown, HTML, Jupyter Notebooks & more"
  homepage "https://github.com/jannis-baum/Vivify"
  version "0.12.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-arm.tar.gz"
      sha256 "08f99b30cd26503983eaf0bec88ba09d23bc88e31e84ff1cac4f32adf06737f8"
    end
    on_intel do
      url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-macos-x86.tar.gz"
      sha256 "cd2e41e32695b9ad558ee6e9b5701271b7812f349f4b7968f1bbd367cac09466"
    end
  end

  on_linux do
    url "https://github.com/jannis-baum/Vivify/releases/download/v#{version}/vivify-linux.tar.gz"
    sha256 "b655987f38177720b88b908bd9748425e26e42cafd368df0e06b2f17e3229267"
  end

  def install
    bin.install "vivify-server"
    bin.install "viv"
  end
end
