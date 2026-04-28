# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.7.7"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.7.7/argy-darwin-x64.zip"
      sha256 "cbaa85733bfe45d8487ba47b990f90bb99545ef3644a667d3fbdb23a9e731502"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.7.7/argy-darwin-arm64.zip"
      sha256 "97eeff9fbf5a56b4a3593b201e92edf08799cd817e4904badda980391aa9cc5f"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.7.7/argy-linux-x64.tar.gz"
      sha256 "25b20c36007bfa19d3c1b9ca058a154fb04a138ddccb85747ded924d151bc347"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.7.7/argy-linux-arm64.tar.gz"
      sha256 "beb3f62339ef556e6b26179f3273ca848184fd9a867e6c23dd549382f36fa212"
      def install
        bin.install "argy"
      end
    end
  end
end
