# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.0.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.0.2/argy-darwin-x64.zip"
      sha256 "4345186a9c2799f7eef7a49b672282ece22b1c17a02c923a5e2c7ea6ed691de6"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.0.2/argy-darwin-arm64.zip"
      sha256 "8a59c372f987c1db940af3f918d28a8c4d57689a79b3a2f3007dae94e175fed0"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.0.2/argy-linux-x64.tar.gz"
      sha256 "271bc9f46b659584f324345536c2b2819867545047bc1fd99fc3f48493350e28"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.0.2/argy-linux-arm64.tar.gz"
      sha256 "4d5dab3c33f73178d3945b00a4f864b436a730365d707bac6c66a78a3887a7c7"
      def install
        bin.install "argy"
      end
    end
  end
end
