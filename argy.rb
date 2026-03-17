# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.3.8"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.8/argy-darwin-x64.zip"
      sha256 "e927a40af87ac8de158fc7c4222dc9d1a5f9aab4dbc10cf0c3f44be06776d812"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.8/argy-darwin-arm64.zip"
      sha256 "4136025abc2057fbee39d07970826c0e7ae145dea8fa330e49a4d1141a8dbf15"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.8/argy-linux-x64.tar.gz"
      sha256 "25614126d48d5a382b8a33ec0e42293b5f6bfc2f69cb26752b2a25e4bce65c7a"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.8/argy-linux-arm64.tar.gz"
      sha256 "318687c43520cd496f37c1429ba04906f75f0952d506ca22c5a6eb5485975fec"
      def install
        bin.install "argy"
      end
    end
  end
end
