# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.9.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.9.1/argy-darwin-x64.zip"
      sha256 "b09c44865dbffae857eae5fb617c23aee4d6074efef1074472d09d9b138fb8d3"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.9.1/argy-darwin-arm64.zip"
      sha256 "b56154ef88ca9dbb2afc3a8e7b0d6589c0e2b9f86a590e89ce9eef21a161520a"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.9.1/argy-linux-x64.tar.gz"
      sha256 "33709347243ade0a908c776dfa1105b9dd52cdc72a734a140b7542eef2b14e41"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.9.1/argy-linux-arm64.tar.gz"
      sha256 "43aff5eceb87c23ddf134907a2a8accb01c169b65c112f159caf7378b51f75a0"
      def install
        bin.install "argy"
      end
    end
  end
end
