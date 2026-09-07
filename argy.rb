# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.6.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.6.1/argy-darwin-x64.zip"
      sha256 "75b2a1183444b6414ed04260df0d28025bf8bc8749196ac5f0a779a2d69566da"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.6.1/argy-darwin-arm64.zip"
      sha256 "6cf9a0aaae62822b09f36e89c2b2c58c39374e54ccaa56b2afbaab2d901c823e"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.6.1/argy-linux-x64.tar.gz"
      sha256 "610fa9492db626ab23d626232be3efa0d04458c69c1303538bf44fa9ae033ca4"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.6.1/argy-linux-arm64.tar.gz"
      sha256 "389416a1dd0e5b801933326acb8d90d848003cdee6c4389eba43e752c8ac7020"
      def install
        bin.install "argy"
      end
    end
  end
end
