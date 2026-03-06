# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.22"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.22/argy-darwin-x64.zip"
      sha256 "52d02f8081f9fc7f9e821c901dd4692a0349da6fe402386f99b749b2d04b4f62"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.22/argy-darwin-arm64.zip"
      sha256 "4add39e7251e18925366b399a3aa16f9b4e51a817201bef7984cc2b5b9e7ac46"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.22/argy-linux-x64.tar.gz"
      sha256 "e627fdbea47df7c35f53a88c3ffc155a1dc64038f92adf38b38a0656b4e54779"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.22/argy-linux-arm64.tar.gz"
      sha256 "8a2d04f48028661af06302fcceb6e7d5e17607d751c1c25f5719dc399bea58da"
      def install
        bin.install "argy"
      end
    end
  end
end
