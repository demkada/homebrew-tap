# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.5/argy-darwin-x64.zip"
      sha256 "145345a1d2e0be0f9965bb321bc552ba0bd9e35c3905a8e51d28483224ee097d"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.5/argy-darwin-arm64.zip"
      sha256 "f395e4f17b72f012542b7cd9b98a0790ea2c828228e0046a7fba19cc2423840a"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.5/argy-linux-x64.tar.gz"
      sha256 "0188f99894ea2643cb8ab22258e0f412940e8025254362c49d0abc045c4362b8"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.5/argy-linux-arm64.tar.gz"
      sha256 "e76704e39b49af628197961a928ce9751b4d988a3d350564be54fb1b73961efb"
      def install
        bin.install "argy"
      end
    end
  end
end
