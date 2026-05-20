# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.11.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.0/argy-darwin-x64.zip"
      sha256 "026e6abefde2d0eabcfa5fe590a69e284bc9a0e996ab57de1284df6a0adc55c1"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.0/argy-darwin-arm64.zip"
      sha256 "b1f3971e6e17c52588c9633c3649bb62e734b0cfc93e54c7f98a25b40e6720a8"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.0/argy-linux-x64.tar.gz"
      sha256 "279f6c6ab9d3dfc0ba48d965f153ade2b9c81644050faa7c4dbd7d6073cd4906"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.0/argy-linux-arm64.tar.gz"
      sha256 "f16466d2aeba6a5bdb1c18426023e49ffa38621176b253e97ddbc148a6d6aed6"
      def install
        bin.install "argy"
      end
    end
  end
end
