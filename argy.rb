# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.0/argy-darwin-x64.zip"
      sha256 "e977a81d8bad3a853902846ea7d99bc20ca82bdea5e16069556d4f15b09dcfcb"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.0/argy-darwin-arm64.zip"
      sha256 "40d8db81b718e48515b383806fbbe7c5dce1e1e29c051104a738f137897516dd"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.0/argy-linux-x64.tar.gz"
      sha256 "633a68b188bb47ab456b465bfb0bb61a15c31ca3ab008dd515b88c0836c291ed"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.0/argy-linux-arm64.tar.gz"
      sha256 "a3ec70ec0d4475ca2a04328111f361e0e41e64c6a9ab2bcd0ff028c300c376b7"
      def install
        bin.install "argy"
      end
    end
  end
end
