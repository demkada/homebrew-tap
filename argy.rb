# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "0.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v0.1.0/argy-darwin-x64.zip"
      sha256 "7e4351ad8bed53646f4dcd37c4260dd1cb2545d17aa12fb313817b36c2a4aa28"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v0.1.0/argy-darwin-arm64.zip"
      sha256 "0368ede7f9ea8288f3d81f5fe5c8db6031bd3b9a4a3119834f0d1569320e6321"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.1.0/argy-linux-x64.tar.gz"
      sha256 "00ea0ef41785dff24c8b2ecc100798c7ef66af7cc2b01e6ab063bf70bf5c41c9"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.1.0/argy-linux-arm64.tar.gz"
      sha256 "884a39d42c0b0b0fd60ef308180b785be0e8534b46e39e140aae2ffd658e5073"
      def install
        bin.install "argy"
      end
    end
  end
end
