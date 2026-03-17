# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.3.7"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.7/argy-darwin-x64.zip"
      sha256 "08d9560aabe94336791f80e702fe0a32067d2c72876325a22be803de467ac67d"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.7/argy-darwin-arm64.zip"
      sha256 "b498901f69922c21aae3835984d177c69ef1d2c2f94298f9b0170254d4741cb5"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.7/argy-linux-x64.tar.gz"
      sha256 "068eb7b799f63f026d3923ce3218e27aab0ecd757f6de74cbbe880662c95e2d2"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.7/argy-linux-arm64.tar.gz"
      sha256 "995ddb3e613275919f6457aa17dd95045c4dc153d9db8cd11f91d4c7e513e3b8"
      def install
        bin.install "argy"
      end
    end
  end
end
