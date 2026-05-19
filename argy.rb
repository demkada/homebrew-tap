# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.10.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.5/argy-darwin-x64.zip"
      sha256 "9515d9786a5227ed25d62bb0f48ff8738649b89cac0071a5c808530f11304cbb"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.5/argy-darwin-arm64.zip"
      sha256 "36e40bf00d9c7227e8c506188a7d14d37b7281606a06d79825148cf5ace454df"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.5/argy-linux-x64.tar.gz"
      sha256 "06aa659031993c884063482ce1049c494990004534e79830f665e688b619ccc1"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.5/argy-linux-arm64.tar.gz"
      sha256 "4debc71ecd624419042c12db00afdb9c6ea16de56d34b66bd2269f87799e1fc7"
      def install
        bin.install "argy"
      end
    end
  end
end
