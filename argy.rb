# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.13.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.13.3/argy-darwin-x64.zip"
      sha256 "e97688a464702492e46483cfdb53ec205ce9710e6914e5d22854610f67ba19de"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.13.3/argy-darwin-arm64.zip"
      sha256 "98af90be3f334c25520c57e2e7df279b25e82da8f44f96160dc66773944063c6"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.13.3/argy-linux-x64.tar.gz"
      sha256 "aeaad107e0e112069467a6ff89f618c8c88dba4a3c6c4dffc7cd00d0883f3ad8"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.13.3/argy-linux-arm64.tar.gz"
      sha256 "625aba5bdb3786999aa7a9db8bd168cf24c9c05ee1ac442332631472859f8025"
      def install
        bin.install "argy"
      end
    end
  end
end
