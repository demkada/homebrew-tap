# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.1/argy-darwin-x64.zip"
      sha256 "544d83814609211a2743cd17a41a3544e5545f1b0efd818e524e86634259bedd"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.1/argy-darwin-arm64.zip"
      sha256 "8e7a8ef0cdb9e1f4c61081460fd57bf8e813149161b0832c591d69bd66be22a0"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.1/argy-linux-x64.tar.gz"
      sha256 "5b0e4c44dc69d1644ccdbcd2d3b15e133400d790faa4eb2a6ebc6658eb5dcc94"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.1/argy-linux-arm64.tar.gz"
      sha256 "245c7637fc51d0fbb53a122e51a13f23e222bcfe386ee498e1ad2a1005088593"
      def install
        bin.install "argy"
      end
    end
  end
end
