# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.1.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.1.1/argy-darwin-x64.zip"
      sha256 "a7743de0ef9b164266ba39b488384f594b8faf43e1ef17e47cbdfa7618814343"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.1.1/argy-darwin-arm64.zip"
      sha256 "9efcdf39b7b40da1d44d7c8ef9501fc16ccb175d3606e3c7e1d4f4743c04984a"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.1.1/argy-linux-x64.tar.gz"
      sha256 "1fb26157ae67434c2566fbaa186ad1588cc5d1869ef7da4548e239a58cf47fd5"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.1.1/argy-linux-arm64.tar.gz"
      sha256 "1983414c139c8b324c4af68110c814077592400e8d16b4990a6fa00b0749df22"
      def install
        bin.install "argy"
      end
    end
  end
end
