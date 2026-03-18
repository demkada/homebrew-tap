# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.4.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.4.2/argy-darwin-x64.zip"
      sha256 "401a05670c3e922dcfdb3a8b3a01c909534f4843decdf6913466d7228b54302a"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.4.2/argy-darwin-arm64.zip"
      sha256 "adce11e250416bbd1439ec0ffc7e62b8538ac1509a3d1f8e19b7b73a029496de"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.4.2/argy-linux-x64.tar.gz"
      sha256 "d2f247f626c333a1c2421db9f49f2836044443bc4a298f5878f616fb5fd79573"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.4.2/argy-linux-arm64.tar.gz"
      sha256 "87cc2feb91811ea2c7a0a64d204b355787c33f65f87abe80113c9fcceeb9c84b"
      def install
        bin.install "argy"
      end
    end
  end
end
