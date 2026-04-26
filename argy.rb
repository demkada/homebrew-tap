# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.6.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.3/argy-darwin-x64.zip"
      sha256 "b0ee9c7ac3234e01a8391abee07d0baf11a7e01510f3e75d690aa96cb3f7d576"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.3/argy-darwin-arm64.zip"
      sha256 "e5cc1b7266be2e4e4a88f0a4fcad7051cddd694e53b78768cf2dc8744150c17b"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.3/argy-linux-x64.tar.gz"
      sha256 "cdd3c21f18010177a6ccf87636726a10f2151a4dd6675bcd2697c742e98cd393"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.3/argy-linux-arm64.tar.gz"
      sha256 "9effbd89081cb10d9c887370dd325b6d902cd3b59d3f3e1d84db81965c398ea1"
      def install
        bin.install "argy"
      end
    end
  end
end
