# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.8"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.8/argy-darwin-x64.zip"
      sha256 "9c073be0e51dc8fcd65fa7d5ae4c41b24d33162f40be7ef071dc2fac2153308e"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.8/argy-darwin-arm64.zip"
      sha256 "ca36fdd8cc3a4e382245e7fde25b86583226278dbb41e7ee99390dbc61ec5cbc"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.8/argy-linux-x64.tar.gz"
      sha256 "30c6c28e4d15e78e9a7fba6aa1ad38398be0fc9ba7fade7ae839969d962132fd"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.8/argy-linux-arm64.tar.gz"
      sha256 "e3e606ac6949a996e20ae9471c8de0908638be5d64f8aa11511cb3da3dffb54d"
      def install
        bin.install "argy"
      end
    end
  end
end
