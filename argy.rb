# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.17"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.17/argy-darwin-x64.zip"
      sha256 "5339afe4fe752199f06acd85bbd1c28fb3b6b53e32ce09e5bd9e1d26a43a8fd0"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.17/argy-darwin-arm64.zip"
      sha256 "681cc9c0d68c936df6ce7088d808771cb64f59ad6fd76d441e230f2f2fd652ca"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.17/argy-linux-x64.tar.gz"
      sha256 "4ee7b2d499b668cfdbc8201df98568018c05ea53528c309eaae6d3425257ddeb"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.17/argy-linux-arm64.tar.gz"
      sha256 "4e07035d517263b22006a3a9eb1dd85a583e5263207b4a0610a7662a9d76dc26"
      def install
        bin.install "argy"
      end
    end
  end
end
