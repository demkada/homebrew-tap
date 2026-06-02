# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.12"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.12/argy-darwin-x64.zip"
      sha256 "fbef24cf5ab802b88386895c1e9f100ae4ec0593fc784eb7d44545520e2bdc61"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.12/argy-darwin-arm64.zip"
      sha256 "84b2289f358cefbefeb24e2cfd979cfa432b8480bd05be9323411149ad43918d"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.12/argy-linux-x64.tar.gz"
      sha256 "8e054740dcfe9a00482bbee2c685339b9528be7392025366e607f8062db19c09"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.12/argy-linux-arm64.tar.gz"
      sha256 "3093361a3481489596d4119d5be2c5d6d539eabce417e8febf86b6aac864010a"
      def install
        bin.install "argy"
      end
    end
  end
end
