# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.9.7"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.9.7/argy-darwin-x64.zip"
      sha256 "9d2ca7555ddd275544dad49de1eabf1efe02c8bbb02867c2693d06e0abcb3754"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.9.7/argy-darwin-arm64.zip"
      sha256 "92b6914b520407b63e4f8da327e2fac1b9c80dd8ae1e3f318779bdc1f1e5b5d3"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.9.7/argy-linux-x64.tar.gz"
      sha256 "b1b431ecdfbb78e67dce3e02d714bd7fb209c36103c55e655d540f070da6c072"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.9.7/argy-linux-arm64.tar.gz"
      sha256 "93a7e9d2c65d3e20ba8b253ac1e2e8159d2efd243d5e406a444c950488fda782"
      def install
        bin.install "argy"
      end
    end
  end
end
