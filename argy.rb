# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.6.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.6.0/argy-darwin-x64.zip"
      sha256 "a6cfe979119c5115a12af4979e187e642a9a33a5302730bd520f198d2d06d810"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.6.0/argy-darwin-arm64.zip"
      sha256 "7202bcbcb41ae4a30668200588ba1e17367b8f7e30a883bd0b9609dd137fd70d"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.6.0/argy-linux-x64.tar.gz"
      sha256 "9919375a0b307e162b43b456f896bbcda2370fdb015730a547129188d538e179"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.6.0/argy-linux-arm64.tar.gz"
      sha256 "3a1955d626cc812180dcf03cfc0d2ff7ab3dd2f7cc3723ba53679cc03bbb8397"
      def install
        bin.install "argy"
      end
    end
  end
end
