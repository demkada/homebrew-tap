# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.3.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.0/argy-darwin-x64.zip"
      sha256 "99ce79031a2e55ac97720a9ca37b6af9ec6531db12bc2c5a373eb5071be05f2a"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.0/argy-darwin-arm64.zip"
      sha256 "d178f6dc3ad23cf99812175d97ca722262546ee3b1e9c415df70cebb9ee2bd1f"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.0/argy-linux-x64.tar.gz"
      sha256 "89f8dee0ec354e936b935435864aec93ac885a9bf425d14000b61764655f5a71"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.0/argy-linux-arm64.tar.gz"
      sha256 "e3a555f340b493ce668d05879f6857a80a7d2011a79ada7777cdcae4d3039bf7"
      def install
        bin.install "argy"
      end
    end
  end
end
