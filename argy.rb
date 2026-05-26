# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.3/argy-darwin-x64.zip"
      sha256 "f117bb0d9fb3f54e8ea0d64603a6c1205cfcc970406b5b1823f7b8d04b0f2bb5"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.3/argy-darwin-arm64.zip"
      sha256 "a07b2d19be8412dcfc0034397d612b97afc7627c68c9eb325de75fab564cb49e"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.3/argy-linux-x64.tar.gz"
      sha256 "08c50ba5e158c5d95b8ea8021b667e8812f88a9c28eb56b07ab60a2884162d15"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.3/argy-linux-arm64.tar.gz"
      sha256 "17d72e816be0b4690d8b3258e880b55a0c4e4fadec99c6a344be8a9af203219a"
      def install
        bin.install "argy"
      end
    end
  end
end
