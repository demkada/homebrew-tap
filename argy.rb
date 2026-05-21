# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.11.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.3/argy-darwin-x64.zip"
      sha256 "dd400d487f24fd28041b256e5d1c75f2e82352a55d2d08d078383742c7015c07"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.3/argy-darwin-arm64.zip"
      sha256 "672f2f48fcf8827495d7c378102aa66cbe4e257f1edc7521badca68404bcd71f"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.3/argy-linux-x64.tar.gz"
      sha256 "f172399408c9fb26712278e5a6f95e8e4372aa160f2591e2442c8f54657a5b20"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.3/argy-linux-arm64.tar.gz"
      sha256 "168eea7fc5b2e6d24e7a33f0d51c6153d907104c3c90dcfe1cf587ac134807db"
      def install
        bin.install "argy"
      end
    end
  end
end
