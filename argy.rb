# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.16"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.16/argy-darwin-x64.zip"
      sha256 "a4c69001479d8d125304f5bda92c3a9ab8d1628a69b26c1c95dbbb595307c26e"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.16/argy-darwin-arm64.zip"
      sha256 "2d1312656e0b2568bac24aeafbaf25ca59b96d8c03b6b5222cbfac8e86c1bebd"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.16/argy-linux-x64.tar.gz"
      sha256 "6b09a01d15360f5451a0356ff8703463f42da4c01e9a120236bb3a92471f77ac"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.16/argy-linux-arm64.tar.gz"
      sha256 "b384a7f28f028b7181fbffd88a85f516f99b49d5ae431cad6da440dfdb0dd5ef"
      def install
        bin.install "argy"
      end
    end
  end
end
