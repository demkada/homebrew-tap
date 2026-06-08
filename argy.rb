# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.14"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.14/argy-darwin-x64.zip"
      sha256 "af4e4a27ad87ac0942a86029a85bc5a3635deb9e3c72281333b2d56e7ff0de79"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.14/argy-darwin-arm64.zip"
      sha256 "20533af48520ef7f428a7ec37ad1b1c583197dac4f836cf10e582d3428e650d7"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.14/argy-linux-x64.tar.gz"
      sha256 "41636d8dd98f3225123875e992d519446e14d4a3b79ac5f8edeb7dc3bf2cf169"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.14/argy-linux-arm64.tar.gz"
      sha256 "2d4f52913e5942e640fe6c3783c41b2f57814945a337166a3a23d4a47e6ed240"
      def install
        bin.install "argy"
      end
    end
  end
end
