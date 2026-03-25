# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.5.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.1/argy-darwin-x64.zip"
      sha256 "d4bdfb0107c42b2ee11281ca8e5e7a5cadbe149c59bfd973dba7e2b485494f57"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.1/argy-darwin-arm64.zip"
      sha256 "8fb4a7bf41523ad13d44e189ffffb9a10655a03f8d1aa7401960382d8998bd4b"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.1/argy-linux-x64.tar.gz"
      sha256 "8c5df3421fa5e695775a9dc42a080043aa0295b0a46c05f28c9ab6bcecc21039"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.5.1/argy-linux-arm64.tar.gz"
      sha256 "327e6db33d7cca84814c81aed61d85cb9cdac3b9ad52730ae587c086b98552e3"
      def install
        bin.install "argy"
      end
    end
  end
end
