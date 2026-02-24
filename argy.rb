# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.5/argy-darwin-x64.zip"
      sha256 "dd458bd70be74d7ac58dbb34621a01f172892a15875cb6bf1550717bab21831a"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.5/argy-darwin-arm64.zip"
      sha256 "cb4b240309e0ed54371d7106211e6f2fcdf0dda942f67431702cabbe6ef76525"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.5/argy-linux-x64.tar.gz"
      sha256 "ba013fba71f6a0a717093387af19f53fbf99219bbf3cd2c8932be1345b2403d7"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.5/argy-linux-arm64.tar.gz"
      sha256 "00d52e903a3366c08ce57f07926a054f0da78c3527fcc82c76f9721eb91be6f3"
      def install
        bin.install "argy"
      end
    end
  end
end
