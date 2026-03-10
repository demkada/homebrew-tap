# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.2.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.2.0/argy-darwin-x64.zip"
      sha256 "c70f94213095f0f0b5570bf33b5d75ba91747f7d737bba866b7d0872ded3d4a1"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.2.0/argy-darwin-arm64.zip"
      sha256 "b2cf184a886fc209de395e86d1fae4a481280e0b5f0b11ebf0954dceb047e3b6"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.2.0/argy-linux-x64.tar.gz"
      sha256 "c74a52a93229d66a6c8129853688991dd53518531e7bdb814a1fd69901e1c7fb"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.2.0/argy-linux-arm64.tar.gz"
      sha256 "a0364e2d4f1560c7781d9e205b67e22f1987a205984250a80118e6482fe0e2eb"
      def install
        bin.install "argy"
      end
    end
  end
end
