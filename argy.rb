# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.3.6"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.6/argy-darwin-x64.zip"
      sha256 "811f736fb0d6e2a1a47523e8f9eb271f32c7c5a9117669b5cc644154326b46fd"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.6/argy-darwin-arm64.zip"
      sha256 "eded9466f8c053bac0aaee8dc87ecd1d694422499f5e09a98ce847ab40b4beac"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.6/argy-linux-x64.tar.gz"
      sha256 "1f42c3de59a6fb39b1aecf050b6a299aed6d996c507be67478df8699df0479ec"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.6/argy-linux-arm64.tar.gz"
      sha256 "d1bd89a4caa54de26d1a2274729897e91d22891c1e73471b37a86bf681620b23"
      def install
        bin.install "argy"
      end
    end
  end
end
