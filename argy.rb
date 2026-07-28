# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.1.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.1.1/argy-darwin-x64.zip"
      sha256 "1bd550d505b422c46adafdfbfdc129a0c402b0ecfef99d72228fd253d07e73f4"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.1.1/argy-darwin-arm64.zip"
      sha256 "72ff7aaf0f68c3bf6a1278a4f32d80ff5a68bb9abffaa503c24a60215aa02db8"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.1.1/argy-linux-x64.tar.gz"
      sha256 "6530b3c975186a1043c7a924ee7ee29463994edcce9401485b81a508dfb05d8a"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.1.1/argy-linux-arm64.tar.gz"
      sha256 "251f103fd886614bfc7ff2a3d64b035bc01c623b17cdc13a5bb26f139e0e6a4f"
      def install
        bin.install "argy"
      end
    end
  end
end
