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
      sha256 "ef42cd46a1e9c0a095484dc9e47e37837ce4d44f6d7d7385f3c0c71f7df40c1b"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.0/argy-darwin-arm64.zip"
      sha256 "c64146935779bc4ee8826442d272b91dc0ae70be4329366e42315f3271e04404"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.0/argy-linux-x64.tar.gz"
      sha256 "214495b7d4e348194653ada95d7d842b81faf110931b0aba1188b8cd08649a40"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.0/argy-linux-arm64.tar.gz"
      sha256 "2f39953a7fd85cb01f3a8a9bf31b96476c4fff99a8d9419660559cacd392b211"
      def install
        bin.install "argy"
      end
    end
  end
end
