# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.11"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.11/argy-darwin-x64.zip"
      sha256 "3d7a606e9c8413d79a010ca35ffca5fd2406d6686995853157f73b7b482b0098"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.11/argy-darwin-arm64.zip"
      sha256 "726e99d25fb262d4fe3c2736553bb347a3ea8d69ddee3d7eea096ee0ba167d0f"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.11/argy-linux-x64.tar.gz"
      sha256 "4b2a98e9e089ffed2d37ff262e8b33c1b6c70f2c9c7fcf9698f689135bb8b181"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.11/argy-linux-arm64.tar.gz"
      sha256 "709b0078a9848280137aef9b980919e354aa737ce6c028316a94595203667d87"
      def install
        bin.install "argy"
      end
    end
  end
end
