# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.6.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.6.2/argy-darwin-x64.zip"
      sha256 "f0e749482dc638cd136ef2789c8ff8df291d7971fb2e48ba905ef43b8ee50721"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.6.2/argy-darwin-arm64.zip"
      sha256 "ff39cdd706bddfd5a40a97801db18c71b6d0111f5b40cbc2c745ee9365b4ed15"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.6.2/argy-linux-x64.tar.gz"
      sha256 "f399b4aba82c44eb616600e1ed54227350449c53496b4ec0fb32801410dee8b2"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.6.2/argy-linux-arm64.tar.gz"
      sha256 "a5a8f77eb9c8006fbac353d963ebba8afc94e3f34c06096b6a7c765cc9c54562"
      def install
        bin.install "argy"
      end
    end
  end
end
