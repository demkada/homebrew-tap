# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.14.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.2/argy-darwin-x64.zip"
      sha256 "7b8bad51d7c15b11f03a3ddf6ffc729d3834d0a3ea17acd55f241df8fb67d523"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.2/argy-darwin-arm64.zip"
      sha256 "7f86e2d14272435d6264d8c770ef75b784a9bc3bb4a2582ec81928c728036974"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.2/argy-linux-x64.tar.gz"
      sha256 "f4533321adab64b920fc178e5fd398c68cd6cb5ef93ca44b05a38d87f937ab93"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.2/argy-linux-arm64.tar.gz"
      sha256 "cce019f613010a7664e37471d21dadbc17a0287a69485f12cfe3e3c2a92fcd9d"
      def install
        bin.install "argy"
      end
    end
  end
end
