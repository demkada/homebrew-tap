# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.7"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.7/argy-darwin-x64.zip"
      sha256 "6fd613bab97fb0b0fc5503fb95222a75bf05882e65efe6f29bd2da42465f94f9"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.7/argy-darwin-arm64.zip"
      sha256 "3f70a6d561d5407463dbc8e40b8afab8a046d1d56f5f26dc0a4d4a6f429977c9"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.7/argy-linux-x64.tar.gz"
      sha256 "ebd1c130bd3ef490093fa79bf1c9f935319ba4cc15838db83cb9236dade819ce"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.7/argy-linux-arm64.tar.gz"
      sha256 "4aac321d9d6967b42b7daf5c181150f869c7c272b2556b527c7d3d99e28256e2"
      def install
        bin.install "argy"
      end
    end
  end
end
