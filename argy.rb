# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.8.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.3/argy-darwin-x64.zip"
      sha256 "354a41bb2ee81a7772f09c3fcff654b36f30f7777bb97624bde0d560fafb80fc"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.3/argy-darwin-arm64.zip"
      sha256 "80a14e33c61bb5df58956248aae74c90df95bd88956281f896d35481ebdd0467"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.3/argy-linux-x64.tar.gz"
      sha256 "948e72f2e9a776dff9c09a90e40bdee32e7feecc40a5e8b954d1be28337ed304"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.3/argy-linux-arm64.tar.gz"
      sha256 "5e8ffdb73dcb2841366c0500299f12e45c811c47715f68fa9f5b5edecbe1a561"
      def install
        bin.install "argy"
      end
    end
  end
end
