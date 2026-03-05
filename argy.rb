# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.15"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.15/argy-darwin-x64.zip"
      sha256 "7aa8ca806c042895233579d2f19180a2684f4c306e5ce142f0c77058861c1a44"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.15/argy-darwin-arm64.zip"
      sha256 "c17aa8815a4dacdd8a2e52cb7250561b82982aa774965c364f29d9e237c3fcae"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.15/argy-linux-x64.tar.gz"
      sha256 "bc1d3da48f986787bfdeebe08dffb63216031db7d805d558b9cf4ffddc88eb9d"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.15/argy-linux-arm64.tar.gz"
      sha256 "9a2a40744e8700b294bc8e590ef21f50b3c6562e74c37d212b6a0d9795a5efc5"
      def install
        bin.install "argy"
      end
    end
  end
end
