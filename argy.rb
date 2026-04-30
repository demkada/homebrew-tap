# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.8.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.2/argy-darwin-x64.zip"
      sha256 "89462cd49ce406393945b5cb8e515163c4773fa0e24f2c8a383579762aa9ef24"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.2/argy-darwin-arm64.zip"
      sha256 "e169d1f1183bd9d638acaa47d62454613e69c465df2bcc9970642d370ad78567"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.2/argy-linux-x64.tar.gz"
      sha256 "43d212607a220e4101216219684a5a302cab185f85914188c486114e827deebc"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.2/argy-linux-arm64.tar.gz"
      sha256 "3891b740290d433c7e0f80c49117e9731579316276cb58e3d905f5a5039c4029"
      def install
        bin.install "argy"
      end
    end
  end
end
