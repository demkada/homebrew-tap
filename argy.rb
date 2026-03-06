# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.20"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.20/argy-darwin-x64.zip"
      sha256 "8e790c8bb98581f102abb235826bb224d2a76fada8d12f402a3c138970c1efbf"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.20/argy-darwin-arm64.zip"
      sha256 "63bbcd84ae1cb5aa1489ab88ba43993d10cf947cf761580991d95e6fb274578c"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.20/argy-linux-x64.tar.gz"
      sha256 "79c7abced5ffbc71ee401630fd32448ba6f43a6de42c1f0a70408df9648f3793"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.20/argy-linux-arm64.tar.gz"
      sha256 "00416435986923e92018f235650c0a54f9ec1e875aff03aba96eaea4cb92013f"
      def install
        bin.install "argy"
      end
    end
  end
end
