# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.7.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.0/argy-darwin-x64.zip"
      sha256 "dc26475fb453987c364eb31e1033d95f3c66a38ee85ce02fd6d787b9ac26b049"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.0/argy-darwin-arm64.zip"
      sha256 "7f0121f713d0b5b3370f51cf4c01bee253e8f90e4833ced67579e9154beeb373"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.0/argy-linux-x64.tar.gz"
      sha256 "9614f33f1ecf522f60a3923bdb4f669bb2593e579a060bf683ff29fb193dbfed"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.0/argy-linux-arm64.tar.gz"
      sha256 "c2983e4d2138b4b16ca709531bcaf1d42cdf331646327c64fd9ad3d8f75b61c9"
      def install
        bin.install "argy"
      end
    end
  end
end
