# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.13.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.13.1/argy-darwin-x64.zip"
      sha256 "aac47787046e86a33c132c729fd4d8320f1efc4290e12b7cd7c91f577750b951"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.13.1/argy-darwin-arm64.zip"
      sha256 "5608fd49c426489519bca59fc719663148dec258bdf344f73d50b410f7842a39"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.13.1/argy-linux-x64.tar.gz"
      sha256 "d799b57427dd27d23602463cdf37dd1f2e4d42cf635b32170efa73682ec22ef6"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.13.1/argy-linux-arm64.tar.gz"
      sha256 "435812ec968db8e31b02c93b2ac0f1678764935d8fd0de3679b36bc7045084ed"
      def install
        bin.install "argy"
      end
    end
  end
end
