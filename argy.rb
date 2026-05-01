# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.8.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.3/argy-darwin-x64.zip"
      sha256 "a5af964501cb3e93a06a115c7fcd38eb7161bc2a58adc56daf3cea44da2d8926"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.3/argy-darwin-arm64.zip"
      sha256 "50293a0712f3fb4fd7660cf1a47d51a57f40a5504e24d326ea3677e1f7e8e755"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.3/argy-linux-x64.tar.gz"
      sha256 "8d7eaf9f25af7677ff85ad6b0200e7486366686987b68642b9720180363b06f4"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.8.3/argy-linux-arm64.tar.gz"
      sha256 "2f06f123a03680ddc3fa0431196504f278b4b38087f47bd4dc4b7e4dc3cd9bda"
      def install
        bin.install "argy"
      end
    end
  end
end
