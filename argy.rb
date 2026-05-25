# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.11.9"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.9/argy-darwin-x64.zip"
      sha256 "b0718c2ee721acea2699584f9742f0112e9970b7926c66f974d5b737895f5055"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.9/argy-darwin-arm64.zip"
      sha256 "3529cbb4da00a2292f1ab77e5bf6f9bdee4780bf6b2336bffc9bd53adb7c9e10"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.9/argy-linux-x64.tar.gz"
      sha256 "66a930dcc5f3450fc4fec92516304bd27bee8f8a3b3883030aa6a138934f2833"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.11.9/argy-linux-arm64.tar.gz"
      sha256 "034a6ad89c3d3202b77042e0486a36f5b2f91e833bbf95f1e0fd138506352fff"
      def install
        bin.install "argy"
      end
    end
  end
end
