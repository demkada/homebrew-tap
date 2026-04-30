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
      sha256 "5c3eb2bb1d1f2f229d117fe92dc58abad7bc0294dea3b8da60d9659de145b9c2"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.1/argy-darwin-arm64.zip"
      sha256 "bd5bf95c8956b2a1bb95cb2c697293604ef0911c27ccf9f3bf3366ab83de7855"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.1/argy-linux-x64.tar.gz"
      sha256 "35957e7f85a11a21dab0e60786e0d4228c86369bfb8218f6019853b4487f3fed"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.1/argy-linux-arm64.tar.gz"
      sha256 "c3ec4e4655f5116a87d03ae7b0ff3e7c636c66e475d800bba28991a7e820a81a"
      def install
        bin.install "argy"
      end
    end
  end
end
