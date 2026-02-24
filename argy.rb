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
      sha256 "2527df506979c3e7281922fd4a2b7a8b8b4ee921d18b5e331e5bddf80bf450e3"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-darwin-arm64.zip"
      sha256 "001744b7a1220cb7c3ae293326e544291148ca4216e503a8a3a3681bdc493d44"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-linux-x64.tar.gz"
      sha256 "cc35fc1e291da9e906717fd030d76cc6d55b4e48dbfd6b9f1b8ca9e7e44ac11c"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-linux-arm64.tar.gz"
      sha256 "f5828c0e963ab1d7b67a5235fe8b2a2f589bd7b3fbfb80f15804b922b9628d35"
      def install
        bin.install "argy"
      end
    end
  end
end
