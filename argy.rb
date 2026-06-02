# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.13"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.13/argy-darwin-x64.zip"
      sha256 "da5f8a4293951a08fc64f914c25d028112673be2689da05dc2fc3dd750effe80"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.13/argy-darwin-arm64.zip"
      sha256 "8d7ebfd30997ef27d41e4d3e9b13278e78d89f60f90925e74d00ad39d034e4af"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.13/argy-linux-x64.tar.gz"
      sha256 "1616b6f6439e0ea29de24eba6dc9542c00eaa37e9ecc8d89141783463e9a4ae2"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.13/argy-linux-arm64.tar.gz"
      sha256 "b7bbcc782123ff565edd449b4e4a5768fc6c1e49a3dd9eebd8fb4620c1dbffa6"
      def install
        bin.install "argy"
      end
    end
  end
end
