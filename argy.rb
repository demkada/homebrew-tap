# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.3.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.1/argy-darwin-x64.zip"
      sha256 "3be790cc5f7a4d474316383f3e18b1a596f0c45cd6f0b2da80f283f2bfbfe5c3"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.1/argy-darwin-arm64.zip"
      sha256 "0157a73cf5976c0e3a14cd682b07ecf06f806a6e5caa2a2e72503bf17b2c389c"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.1/argy-linux-x64.tar.gz"
      sha256 "419292384fc604dcc542ced126066da4ea22bf9211d6dceabfdc90ef7ab18e68"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.1/argy-linux-arm64.tar.gz"
      sha256 "29df163bb925b6e94c6019103d64e72e938cf21dcec692a49eca7119c92e92d9"
      def install
        bin.install "argy"
      end
    end
  end
end
