# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.4/argy-darwin-x64.zip"
      sha256 "9d46cc3f41d96354707d85b3eb5fc4b757d05b82faab3466900022cc0416cf02"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.4/argy-darwin-arm64.zip"
      sha256 "eec94a7ec5da6ed38b20dbea66731bdc88f4ed684757c5c26fbdf055f7ad0955"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.4/argy-linux-x64.tar.gz"
      sha256 "90d18e0412cfdb7a9dabadcb74187c2be79ee1c1240047752a2c48091bc4862b"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.4/argy-linux-arm64.tar.gz"
      sha256 "6d68bc2ceaa9d935e9abd2be7607df39d045be18b3301a4ebed449df90efb19f"
      def install
        bin.install "argy"
      end
    end
  end
end
