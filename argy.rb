# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.12.8"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.8/argy-darwin-x64.zip"
      sha256 "ec6e513120ec9e67db598aca6dc1759132cca8f7fc68eacce9e53816d8b4f55f"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.8/argy-darwin-arm64.zip"
      sha256 "880da7677290f6c02336eadaa094a659896db2968cd783025c39d08ba347ef70"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.8/argy-linux-x64.tar.gz"
      sha256 "2c34e8731919a53e4e90471792583515ec4f61032b9cb1f8844c379a5e14c0e0"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.12.8/argy-linux-arm64.tar.gz"
      sha256 "e3d0b95138c8575edeb1b4dd0fdf737f156471d85361c5482f9c17d0466c9171"
      def install
        bin.install "argy"
      end
    end
  end
end
