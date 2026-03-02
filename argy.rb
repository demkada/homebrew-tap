# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.9"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.9/argy-darwin-x64.zip"
      sha256 "3bf2794c341085aefc722cb11c0dd695ab09cc5f8aff89b6374270ad5687d76d"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.9/argy-darwin-arm64.zip"
      sha256 "23029b08f45834c19b6de8e519641fe2d0a8731d0ded8297e1e36ae2419c93ec"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.9/argy-linux-x64.tar.gz"
      sha256 "13bf2dc0e15b240a3111727d8f4c68f8c887e28491e14704f3117373c3c22f66"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.9/argy-linux-arm64.tar.gz"
      sha256 "dd8e0bdc7febb514d39a8f0d18d84d9923e2fbabb9c26b54e010bfd6203f6726"
      def install
        bin.install "argy"
      end
    end
  end
end
