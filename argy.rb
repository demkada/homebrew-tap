# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.12"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.12/argy-darwin-x64.zip"
      sha256 "8a29b949b4440218fdc632ebffd1bf131821db40115e0f3fcc703eff65ab984c"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.12/argy-darwin-arm64.zip"
      sha256 "2bbbea745bc0efde3cc485e03b472c4ecc93b684de301e531b694a5be090041a"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.12/argy-linux-x64.tar.gz"
      sha256 "a9a8078bcfbf2e15f74a24f6bb7436ffc621a24ffbac9ba5e35d21a90cab99c4"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.12/argy-linux-arm64.tar.gz"
      sha256 "079c59f5c4e5bbd6e89bd5ca7f63136ed46cbcc32a0cb9c2810a55066699568d"
      def install
        bin.install "argy"
      end
    end
  end
end
