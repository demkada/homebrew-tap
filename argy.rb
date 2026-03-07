# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.26"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.26/argy-darwin-x64.zip"
      sha256 "7fbf59143d55892dafbf44c017b89f36b7c780ca13d28ec7801a0c7e3b38a862"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.26/argy-darwin-arm64.zip"
      sha256 "a3c9911b58205f35f4d70d1edf209dd821b3063a752de35ae4ea71e0b3061572"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.26/argy-linux-x64.tar.gz"
      sha256 "2a57e04dcc8477a7392106950ce8aed58f2ff534f9e40239f890f72ccaa99af1"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.26/argy-linux-arm64.tar.gz"
      sha256 "e3730de05a91ecb2146d23366ad2a4eab84ed77e15af012b3a7981e27f7f72fa"
      def install
        bin.install "argy"
      end
    end
  end
end
