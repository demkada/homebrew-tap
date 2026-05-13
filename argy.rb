# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.10.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.1/argy-darwin-x64.zip"
      sha256 "3ec0d06f91222aa2416e6476234bd32281ab0f1ac2f774d4617dfbb5a6776f46"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.1/argy-darwin-arm64.zip"
      sha256 "c45f0b1a14e16d899200d5e66f58ea5a96f4cf64dadf4d81b0563f18d9aa399d"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.1/argy-linux-x64.tar.gz"
      sha256 "3962a7d0bf9ecfd1ce8da18b10287b49dca04da2591fe49c6f36511751bd3fb9"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.1/argy-linux-arm64.tar.gz"
      sha256 "5a3e179ab0177ed7283fce9e4ebecd4d7ec66d8a1b80f3e79b5decc4dbde19e7"
      def install
        bin.install "argy"
      end
    end
  end
end
