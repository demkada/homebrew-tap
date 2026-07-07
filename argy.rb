# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.14.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.1/argy-darwin-x64.zip"
      sha256 "de0b580297ccc6b33edd81482aa58ac86add57b4079e0242ad3875c5e36f42ff"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.1/argy-darwin-arm64.zip"
      sha256 "4c43496ad86a0f2f15ae35927db6da3fe50f4a6092666e8b46766c7a752f57c0"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.1/argy-linux-x64.tar.gz"
      sha256 "5f6f5ea120b3197701f504e7ebd7882803e92cae3cf0df03616251c2346782d1"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.1/argy-linux-arm64.tar.gz"
      sha256 "718325ff4baedcd98257fe87054c9aabfca3bc4ff57f49f08adab3c2182f7cf7"
      def install
        bin.install "argy"
      end
    end
  end
end
