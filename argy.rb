# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "0.0.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-darwin-x64.zip"
      sha256 "375ec7f99618926fc966841fe3e20d9cb872c212980f5e8cb391d03a31a68ca0"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-darwin-arm64.zip"
      sha256 "cf764ab76d9d4d8dfc3e6879b25d1399d7e020ad0614456fd3737c09e59fb66c"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-linux-x64.tar.gz"
      sha256 "cc22bed303c15c1305f1194d71c443c6749914ef82b2119fac96bff6341f5344"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.0.1/argy-linux-arm64.tar.gz"
      sha256 "c7b797da564783551f7af43ff8dd5da1d036c723d5bbbf8c343beccac167b2c6"
      def install
        bin.install "argy"
      end
    end
  end
end
