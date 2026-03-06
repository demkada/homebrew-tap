# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.21"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.21/argy-darwin-x64.zip"
      sha256 "ca1e37aa3ae1cdf1d12e442bcd07be5ea99396cb7ffbf9010dc783153e591c52"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.21/argy-darwin-arm64.zip"
      sha256 "3b3a9ed188b0b13a360ca260abd4b9a1d90aa1c1c0bc648ca99a07761ce84d1d"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.21/argy-linux-x64.tar.gz"
      sha256 "5fa75617299dc3e4faab968026aa73e19003e9f405fa9f52f5bc0e67626fe3cf"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.21/argy-linux-arm64.tar.gz"
      sha256 "a551775b0d45ab7d6f33d90a031ff2f10579f15530587595eb2b29c496744743"
      def install
        bin.install "argy"
      end
    end
  end
end
