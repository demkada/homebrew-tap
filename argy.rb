# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.13.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.13.0/argy-darwin-x64.zip"
      sha256 "4866d8e23d7827b1b87f0b6527c92cbf976646716aa2e701fc6f866e55b85a2c"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.13.0/argy-darwin-arm64.zip"
      sha256 "173b72a7fc32faecb728c3efe8af080292722cf56eeed09199b93cb5ad071819"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.13.0/argy-linux-x64.tar.gz"
      sha256 "a3db43d8655e6da8e7ccc40595cb1b758f0736ccb072cd3bcd4593df09e33a9b"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.13.0/argy-linux-arm64.tar.gz"
      sha256 "68500ca40f5351b1d77f8a6aaa67622b8094f3325367c36795d7f7d029ac6953"
      def install
        bin.install "argy"
      end
    end
  end
end
