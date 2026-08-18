# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.4.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.4.1/argy-darwin-x64.zip"
      sha256 "009aa6566c9272f164dd95200e630d0b230147eeb820d43547d01dcef6d23a77"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.4.1/argy-darwin-arm64.zip"
      sha256 "69730353288957b5cb258e62b5dfe4e0b8291399ac50c44e7b10df167ce10950"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.4.1/argy-linux-x64.tar.gz"
      sha256 "3fe336e691bd5a16d3a18c46aa2edd30a4240e4c90fafccfce00c1cc597ecd80"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.4.1/argy-linux-arm64.tar.gz"
      sha256 "c359b16cee128caebd3ec52b73ba3da0618980c598bc2386b9035337d5763875"
      def install
        bin.install "argy"
      end
    end
  end
end
