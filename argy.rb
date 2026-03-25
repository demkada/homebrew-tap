# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.5.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.0/argy-darwin-x64.zip"
      sha256 "9f81a0be569bf62e83ba948d9ec0c6b90417dc5834d4e2e52a5af5f2ab32d6cf"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.0/argy-darwin-arm64.zip"
      sha256 "408228101d19806fbc47db2c2476a851b287692952fb24e1e23a3b7de83346e7"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.0/argy-linux-x64.tar.gz"
      sha256 "c426d9c892f51f0a729dea5a9a7203f8d3ba1de011f685b56be2e69b158abd4c"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.0/argy-linux-arm64.tar.gz"
      sha256 "3c0b6d5b933a3b0ff3e0bc8299df63fe68241bc1a3c070170eb22db653080549"
      def install
        bin.install "argy"
      end
    end
  end
end
