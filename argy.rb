# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.10.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.3/argy-darwin-x64.zip"
      sha256 "8537dae4de2ca66fae83e1f393e80c9d361eb83f3a95a643d731e507fba21cad"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.3/argy-darwin-arm64.zip"
      sha256 "c992f229ddf54a400374a3bc05c16b96a7cfeb8a7625028d37c0d945bd8a8eca"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.3/argy-linux-x64.tar.gz"
      sha256 "6f3ec0c634f62798959dfbf36a29842d26f733f4c00b672a47096ac6baffd56f"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.3/argy-linux-arm64.tar.gz"
      sha256 "2e6d56c2c73aa551248ddc9809289e4e0b2ac3360a5661a43285b1fe974bca7b"
      def install
        bin.install "argy"
      end
    end
  end
end
