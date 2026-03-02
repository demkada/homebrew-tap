# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.10"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.10/argy-darwin-x64.zip"
      sha256 "9dab7e8771b8cc800c6d17d46aeb908d34a5ee6f90597198c173a7783ffbfb08"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.10/argy-darwin-arm64.zip"
      sha256 "75fc967d9bd92c15f27b89b63e33725f17136ce81c7ebd7fe239b29b89f524dc"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.10/argy-linux-x64.tar.gz"
      sha256 "bcc9b273116b1bd496cf3300ce94c4769d964a6d7ace113891e33274f8dd38d7"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.10/argy-linux-arm64.tar.gz"
      sha256 "7063176032a22834122ab2ba6cf475ad2cc03ff974103f3e772ff6dac1fd9032"
      def install
        bin.install "argy"
      end
    end
  end
end
