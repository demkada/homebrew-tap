# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.5.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.3/argy-darwin-x64.zip"
      sha256 "77a0f3519096442009c914f09fed3f88ea185843915df5948a162fe4a130230c"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.3/argy-darwin-arm64.zip"
      sha256 "e176a5e0746f7093861bad085259ca1327e308e6c79df7e23bf2dd18c33df2d3"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.3/argy-linux-x64.tar.gz"
      sha256 "335c872801726a7cddd5e515ec5de0f26dd17c9e9cc0a63c36471b4099c4a6c0"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.3/argy-linux-arm64.tar.gz"
      sha256 "5733ae09cb09c94a186d6d11b2023c579db485d0c95694387cf260662fad3737"
      def install
        bin.install "argy"
      end
    end
  end
end
