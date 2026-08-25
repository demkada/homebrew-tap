# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.5.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.0/argy-darwin-x64.zip"
      sha256 "d5abc5743cc7006cfcdefb07598612998045edc6773babf728930d5086102135"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.0/argy-darwin-arm64.zip"
      sha256 "78620e2ad29abea1f9ab0413a85bd31d7dfcd475eb02777a40c2d17f499ee14c"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.0/argy-linux-x64.tar.gz"
      sha256 "a79ed027a834026bee9fe101cbbc2f903951b3d62f8faec66356097cdc29be80"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.0/argy-linux-arm64.tar.gz"
      sha256 "c333cbdcdfc182e2d50db7e293fece62b4fd818c5661c42a8cb4f5c8766d66cc"
      def install
        bin.install "argy"
      end
    end
  end
end
