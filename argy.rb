# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.6.6"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.6/argy-darwin-x64.zip"
      sha256 "7f08b79abfd419fe8e8d4ac6084bd4d684606a8d62b34eaed243f51685a9e865"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.6/argy-darwin-arm64.zip"
      sha256 "9e086a99f392b83ce9cb731ad2184c4ce9c44c76c92d48f977dfd97ffc510618"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.6/argy-linux-x64.tar.gz"
      sha256 "c7d564d85e9e1dd8d0a7957ae4999a0c34b9c98f87da98e2f232b055e32dba5d"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.6.6/argy-linux-arm64.tar.gz"
      sha256 "7c6c74800af95c0760941ba17e1554590bae808a3f71a00fec24997807a59ae1"
      def install
        bin.install "argy"
      end
    end
  end
end
