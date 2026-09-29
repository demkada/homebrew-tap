# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.8.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.8.1/argy-darwin-x64.zip"
      sha256 "681766d8989a9479b2921a6874d2fd6ede9d56c7dd37e0e27d8f444c39a9f829"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.8.1/argy-darwin-arm64.zip"
      sha256 "66322fe0aae2f133bec2cbfe0aaf6645204a10232793994cb99bff9984f6b1e3"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.8.1/argy-linux-x64.tar.gz"
      sha256 "39eaaa479212f9322369a7f75622e267ceb8f316c943e6a4d1b51b1e8236a8d3"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.8.1/argy-linux-arm64.tar.gz"
      sha256 "645cd0739be7cd34f4aab57c11c76a05569b45447c4bec8e1d13b462f8b7925f"
      def install
        bin.install "argy"
      end
    end
  end
end
