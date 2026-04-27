# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.7.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.7.5/argy-darwin-x64.zip"
      sha256 "1644933aa1f3eec72de13d6e9769f0d4282247f6097a0f1ddc78228c3561e091"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.7.5/argy-darwin-arm64.zip"
      sha256 "cf5fbfc587721879f4a655d86599d26c0667fa4ba7d613a713626b189caa5fcf"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.7.5/argy-linux-x64.tar.gz"
      sha256 "db001769150daba4b2118e216da4858510ea0a11b5a576586871b4620aec60fa"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.7.5/argy-linux-arm64.tar.gz"
      sha256 "85b65f436b8683dddb8d77927c2955f04b237a30894a5d8ae5a78da8d71d31eb"
      def install
        bin.install "argy"
      end
    end
  end
end
