# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.16"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.16/argy-darwin-x64.zip"
      sha256 "5a76a8909df14af352f57c45a03aa23c0bb6cbe910c754d75a63719650a6a35c"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.16/argy-darwin-arm64.zip"
      sha256 "ea66bc1f940f4b572d08af8097e0392bdf01ce5a4d0e6b1e16f19eadc3ddc53a"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.16/argy-linux-x64.tar.gz"
      sha256 "24bac10e879931e89d97428299ae4d64b6031fd8e3077e6fe6830ccedbdf45d2"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.16/argy-linux-arm64.tar.gz"
      sha256 "7538cdc3840e26813e8aa394d086f0f5f93806ddd5ca85773cc2f7107122264f"
      def install
        bin.install "argy"
      end
    end
  end
end
