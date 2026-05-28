# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.9"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.9/argy-darwin-x64.zip"
      sha256 "db5cb308ecf8ea11526de25ca93e47fcee69547be7182a7d1f68a9216fde65fc"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.9/argy-darwin-arm64.zip"
      sha256 "b30017587d55fb74c5839af486c9a72bad7ee9b6e911e3abfc1d9d78e6dbc5b4"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.9/argy-linux-x64.tar.gz"
      sha256 "b6e591627841fadb3274bbaadcec95fef1c40237d9d1c7fb84b19a3f84a64c6c"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.9/argy-linux-arm64.tar.gz"
      sha256 "0a87007de2ad5987e1918a367b83a56ed513d9e8510c31aa11569567b04d7ae2"
      def install
        bin.install "argy"
      end
    end
  end
end
