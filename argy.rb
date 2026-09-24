# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.7.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.3/argy-darwin-x64.zip"
      sha256 "e7cf09a53c424a5bf19b46957aac0f2f1d74ba0bb3c6be50c87c84b9372cea9f"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.3/argy-darwin-arm64.zip"
      sha256 "684c6067529cf671cd64c583aa353f1462d80b127d0eb08ba45298671b3d21cb"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.3/argy-linux-x64.tar.gz"
      sha256 "7586e1ba72ade1a54c325d2caeab0066c856e87c6985f76e406fc7996bae244e"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.3/argy-linux-arm64.tar.gz"
      sha256 "d8c9d88c8df1f7c6650625f149b3db370bfd803c3ed17ae8affc471f294e79bd"
      def install
        bin.install "argy"
      end
    end
  end
end
