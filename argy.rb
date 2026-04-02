# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.5.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.2/argy-darwin-x64.zip"
      sha256 "bc89dcd350fa54109db8aac0a402d8b387e03c76afaae77e624c614b6db7fe2d"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.2/argy-darwin-arm64.zip"
      sha256 "cfbb7b45361ac2494164ec4860138b769e67403ba057739915a7ae6becafdf58"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.2/argy-linux-x64.tar.gz"
      sha256 "8dddf4ab8ec11fb69a419bf53cb062a5bfcab84ab7e3b365e4ed656213179750"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.2/argy-linux-arm64.tar.gz"
      sha256 "eb29144d4c6825e5c381e2f8cdff0eb5fa1c63e406f554cae11479249aae3896"
      def install
        bin.install "argy"
      end
    end
  end
end
