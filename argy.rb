# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.8.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.8.0/argy-darwin-x64.zip"
      sha256 "e0e4f6ecf0f08073996d0c041c2eb0e38c513ecf44590e96f598a21614e211f8"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.8.0/argy-darwin-arm64.zip"
      sha256 "8f7462791eed15836614b4dbdc3e379d58dbe60b07a9b46862c5c90a58579ec2"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.8.0/argy-linux-x64.tar.gz"
      sha256 "641a14dc126add73dffc627bfc801c86754051b516aea6cda090ef8c7ced3296"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.8.0/argy-linux-arm64.tar.gz"
      sha256 "b9cfa9270eadf7015309b310b2973f6ae6002fdfb82b95d1456b16933639a8e1"
      def install
        bin.install "argy"
      end
    end
  end
end
