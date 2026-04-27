# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.6.6"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.6/argy-darwin-x64.zip"
      sha256 "9f1a47f7dcdb3a94c755a814b860ecc55ddbba6488e2b54ee224085ec9529143"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.6/argy-darwin-arm64.zip"
      sha256 "20faed873675ff449faa5d4ba6403b0d416008abff5f0aa48738753dc49abb52"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.6/argy-linux-x64.tar.gz"
      sha256 "76777b64ec280e470b34e2045d74fb1121262b5bc17008c7a7b4ca78e7d8e777"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.6/argy-linux-arm64.tar.gz"
      sha256 "dee953f7bd80da3ee26f9e39d0ed204e67a9506cca106af4cbb65e3e286657c2"
      def install
        bin.install "argy"
      end
    end
  end
end
