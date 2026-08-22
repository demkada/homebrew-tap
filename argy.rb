# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.4.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.4.2/argy-darwin-x64.zip"
      sha256 "f55286a880fe073a0fab2598e9bf67c72c915695b4e9624f4369aa4261cbbea0"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.4.2/argy-darwin-arm64.zip"
      sha256 "16481901fe99f839da37c89c9cc37b8cd54a37b447ec4a5cc43d52db3c3b661e"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.4.2/argy-linux-x64.tar.gz"
      sha256 "240c5b64efb87247e165102c5813763a5ccc8c5cac2841979f78e0d1149c16bc"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.4.2/argy-linux-arm64.tar.gz"
      sha256 "bae1037a40569130849fe3b5f6908d6afa79369e86fc65c0d03dd7a2f90e51a7"
      def install
        bin.install "argy"
      end
    end
  end
end
