# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.7"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.7/argy-darwin-x64.zip"
      sha256 "b3882fa1962c727b7c048496fb7f5cc3cf9d84ea3a56f766512d4f0873033e45"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.7/argy-darwin-arm64.zip"
      sha256 "4c50521e212eec5208838a878c4f5942514c7a61c5f1d238ea1e4687408c36d7"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.7/argy-linux-x64.tar.gz"
      sha256 "60bd7b41ea3871336a294c8f50d2af5fb1a9c1b61cf0bfae69fe8e643ba54e3f"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.7/argy-linux-arm64.tar.gz"
      sha256 "330446d04b7ac8a8e598ad7d5aca889840147ed4a0383ffee9a8fdc126af5025"
      def install
        bin.install "argy"
      end
    end
  end
end
