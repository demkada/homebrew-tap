# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.2/argy-darwin-x64.zip"
      sha256 "16652f1f3f7fd74c16d0964bdfe721f8c8f61f0af9ae8ff9a37169302dd37468"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.2/argy-darwin-arm64.zip"
      sha256 "eff6f203f991a0da9c562bf36bdde9c06f27b889428675804a6383d16fcf8e31"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.2/argy-linux-x64.tar.gz"
      sha256 "6e4522df4b2cfeb077d6775d9a48316196ec1c6c3999c07c3987e8fe3f49ed0b"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.2/argy-linux-arm64.tar.gz"
      sha256 "20734259f3d305fd190112aeb6a2a0a713bc29a2f40f3dfa1077280b35c8044e"
      def install
        bin.install "argy"
      end
    end
  end
end
