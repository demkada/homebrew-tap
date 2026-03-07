# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.1.0/argy-darwin-x64.zip"
      sha256 "cc283283adc7f15b110a6bb2febfa9c700d170cb723eff3592267ee5513b285e"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.1.0/argy-darwin-arm64.zip"
      sha256 "8cbd0ecd80216a0771c4eb3e9b4c8a7de9bc03ae945fcc25acb2ab4957bdff40"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.1.0/argy-linux-x64.tar.gz"
      sha256 "a860f14a2f154038cfeb8f26d181fc40287177a1f6c7c4dd01cf36a0e0a03b5f"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.1.0/argy-linux-arm64.tar.gz"
      sha256 "20a853d8985216ff2d42e4141984c7f03e2b523153fd9ba0b2a5900b2082705f"
      def install
        bin.install "argy"
      end
    end
  end
end
