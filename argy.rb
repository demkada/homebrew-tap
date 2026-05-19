# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.10.6"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.6/argy-darwin-x64.zip"
      sha256 "a7f2c65fcc28109d3e224779590d2ddd8c969714c999508dc974037543190601"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.6/argy-darwin-arm64.zip"
      sha256 "ef86d9c73042176d85520d0aa811420bde22dc199cd1909230f884b317f14927"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.6/argy-linux-x64.tar.gz"
      sha256 "175de1a5cee4ef01db0dd89c176ce85a05faaa6b79c9de5bfd9aa837fd42b475"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.6/argy-linux-arm64.tar.gz"
      sha256 "981f01c618837ee35ac0d35ba4e47f30e494f87a06b2c280577116c96b04cb48"
      def install
        bin.install "argy"
      end
    end
  end
end
