# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.14.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.1/argy-darwin-x64.zip"
      sha256 "88c775c37e23b0fcda98c4b932589a6e1eff8d5d45b4011f25674ea9947f2efd"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.1/argy-darwin-arm64.zip"
      sha256 "076039d1b88273b62d526d42bd037c2cb9a9f22b108bf219286264a61b1db816"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.1/argy-linux-x64.tar.gz"
      sha256 "2ec3f8dd99e45657cebae9374b95fc18dcce40812e57eb6c3930ef7ca46213ca"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.1/argy-linux-arm64.tar.gz"
      sha256 "f5de8c88414a3bfaeb9cc42b6fefa22fe9abac2c026e2569afdc743dc32be982"
      def install
        bin.install "argy"
      end
    end
  end
end
