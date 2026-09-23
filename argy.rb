# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.7.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.2/argy-darwin-x64.zip"
      sha256 "ce57ac550bb236b9458dd2c6a863b04ce4a9648348b3b2ad9b867ec6af234da6"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.2/argy-darwin-arm64.zip"
      sha256 "41435f2472ef591a29ea7c2ca5ba22997df43a9abac81eed3d7efc94cddaac2f"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.2/argy-linux-x64.tar.gz"
      sha256 "c33cdcbeeb45ea8eb145dab436fad51deaed9d5edb5fd5bec1e18888e29cbfeb"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.2/argy-linux-arm64.tar.gz"
      sha256 "dc35ffb334f0bde94e217b4e266a64aa181be2a0d627780566fd4934b5d54e26"
      def install
        bin.install "argy"
      end
    end
  end
end
