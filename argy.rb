# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.10"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.10/argy-darwin-x64.zip"
      sha256 "e0e63c36c26fa0a1e747a9b42a06aebcf336674b0c4fb09a89ad584f1eb2c7bf"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.10/argy-darwin-arm64.zip"
      sha256 "c57a04b9d459fa70a2db9451fa1134c07a40205a9b51236456016e8308fc00a1"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.10/argy-linux-x64.tar.gz"
      sha256 "d2736652386587262fdde4828e4f121e746f21b5939b8fd8b37bfaee3b8a613a"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.10/argy-linux-arm64.tar.gz"
      sha256 "928683f5a7c8884e1d3a6b42461c7e236e4aa5ff0046e5369cd70f1d78556257"
      def install
        bin.install "argy"
      end
    end
  end
end
