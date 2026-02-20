# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "0.0.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-darwin-x64.zip"
      sha256 "19c1008874475828b7bb2e8a9832aaefd04baa824954c453c51c054f47776b80"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-darwin-arm64.zip"
      sha256 "1898028a8b5e7b91fd1c2f1839efcebef0d43e52b8a0075b7956e4feb38c7af8"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-linux-x64.tar.gz"
      sha256 "8e5a3dde9847b53604f146a4a5b50c888e2f09a3fd99677e893cb53025ecc243"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-linux-arm64.tar.gz"
      sha256 "3bca59dc806288bd80aea9fa0ea4d99840e158d5680a57fb9ca3ace8dbf6daaf"
      def install
        bin.install "argy"
      end
    end
  end
end
