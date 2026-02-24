# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.4/argy-darwin-x64.zip"
      sha256 "6eae9be9d225e650aa789fa3a3b90a92a615c035959d91512776f9cfc6317276"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.4/argy-darwin-arm64.zip"
      sha256 "633b2217bbc3c205de80a214136cf884d8774e91ee6445f00ff6220bff82d94d"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.4/argy-linux-x64.tar.gz"
      sha256 "e0af12dee413c440454e760a20ccd52db578c30eae2f500c474d1c97886f2d84"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.4/argy-linux-arm64.tar.gz"
      sha256 "1293be28aea83a2791c4c6397996bf7f970152282749d3f64366d065ae76063c"
      def install
        bin.install "argy"
      end
    end
  end
end
