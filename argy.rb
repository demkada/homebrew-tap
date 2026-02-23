# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "0.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v0.1.0/argy-darwin-x64.zip"
      sha256 "8f6a6f1e3719129a378b8210115571cd39f220151201b1f8a73e80a6a551fb3b"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v0.1.0/argy-darwin-arm64.zip"
      sha256 "26460ead78912218e7bcd1ccac4bdb274b960cc00f7b6c07ee0b4d2e86859051"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.1.0/argy-linux-x64.tar.gz"
      sha256 "ea5cb4b5f48d19bbaac975c8435580816ecce55966e1c4cd58ef3ad0ff76fa48"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.1.0/argy-linux-arm64.tar.gz"
      sha256 "32963325a645ca75d4fd02c318c34e652c037745bd1442a05095a011cb16213e"
      def install
        bin.install "argy"
      end
    end
  end
end
