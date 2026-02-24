# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.3/argy-darwin-x64.zip"
      sha256 "f42d5cebe22598a709e0ad1611b7fb1964d7eef2c1e5e0593a3dd1eebb0dc0fb"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.3/argy-darwin-arm64.zip"
      sha256 "db7f2e73a49b5e3bfa2a995d3d4658a76fa27d7d298913832eeece673873f3ee"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.3/argy-linux-x64.tar.gz"
      sha256 "ec07d516717501933d96f81bddb43a93273a18080e029a7a5f2674ee7966cdd5"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.3/argy-linux-arm64.tar.gz"
      sha256 "4db5baad5984cc51bdb6b71ede5148d991f5b46ecf2c93b561bb9f7133be41b6"
      def install
        bin.install "argy"
      end
    end
  end
end
