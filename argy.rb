# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.3.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.3.0/argy-darwin-x64.zip"
      sha256 "a9e6ffe62ffba3c6145a5a147a06a2676b85342f767bb2a4562f8a7abddb5947"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.3.0/argy-darwin-arm64.zip"
      sha256 "fd2e82e81472bd022cf276a65b970f432751300d4071d004317a1856adf88103"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.3.0/argy-linux-x64.tar.gz"
      sha256 "006e6122662bfe865b3eb323ed0f3ad29cd925ad00aa96fef4a17da0888b1003"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.3.0/argy-linux-arm64.tar.gz"
      sha256 "ade674b6875850b27fc1f01330214731453042a75f31af440d52b6078ee94d4f"
      def install
        bin.install "argy"
      end
    end
  end
end
