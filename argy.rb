# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.2.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.2.0/argy-darwin-x64.zip"
      sha256 "f9549b2ff12d0f62644fea6e0c53331e9ef2589f960d5605378087e65e116a5e"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.2.0/argy-darwin-arm64.zip"
      sha256 "3b73c5a989cc310a6c0a8a1cda231005d64f78e741e31695ba2743160089cdd4"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.2.0/argy-linux-x64.tar.gz"
      sha256 "1182e2cac19700bbe0be00b51569b306f1f44e71acb7252889a5c9393fd1f922"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.2.0/argy-linux-arm64.tar.gz"
      sha256 "149b060186f65c2d6266f0784b035bb1cc9870c9d403ca98a2c1c06d0a9bf017"
      def install
        bin.install "argy"
      end
    end
  end
end
