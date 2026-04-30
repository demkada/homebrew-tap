# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.8.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.1/argy-darwin-x64.zip"
      sha256 "4c14bd6a8c19debc0ca181b9d67e42d970b1dff305a97df1900a92d14008bab7"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.1/argy-darwin-arm64.zip"
      sha256 "6a9ceec773d72d631843140db86e0852e281383030f66288a605ed6993962176"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.1/argy-linux-x64.tar.gz"
      sha256 "ac23e966ced0715a10556a2b89c12e38c73c63b3ebaffc51dc349b0c17541e44"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.1/argy-linux-arm64.tar.gz"
      sha256 "e7927eeb94c4d4cb717715de23250ae995a1312e985acecd6f9c9ca4bce2c795"
      def install
        bin.install "argy"
      end
    end
  end
end
