# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.3.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.5/argy-darwin-x64.zip"
      sha256 "280d64b286f05ded889fbf67b228069904ced1233c0e700229410ac8098b1b18"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.5/argy-darwin-arm64.zip"
      sha256 "69cc54aaeea6966cd5e4f7ea716a8f338df17e189691520aac766a170189ef67"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.5/argy-linux-x64.tar.gz"
      sha256 "3c9f8a4ec8830211d24cbdc2d64619ad98f1f14121104a553af9d2a37cea6fa9"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.5/argy-linux-arm64.tar.gz"
      sha256 "d25280c1b1aa72d1cd18be3537b4cb0fc89d407cc7d33c9823740644fa0d7f0f"
      def install
        bin.install "argy"
      end
    end
  end
end
