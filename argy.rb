# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.10.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.2/argy-darwin-x64.zip"
      sha256 "75111d901fa4790ccc6acce8fbbdfdd3691af130c56e0fa5b973dc6b315acccd"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.2/argy-darwin-arm64.zip"
      sha256 "9e2ec3f8f5860a3c27537f499eb9b747cba16de58567e1e03cad994aa07c9210"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.2/argy-linux-x64.tar.gz"
      sha256 "cab542f88f16715454009f2cf8eda09468599d58cd80885c457e98cb53deeada"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.2/argy-linux-arm64.tar.gz"
      sha256 "eed05be2127ac682121553269a2d98b81acd837d276bf871c6131cb2d312c1eb"
      def install
        bin.install "argy"
      end
    end
  end
end
