# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.4.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.4.0/argy-darwin-x64.zip"
      sha256 "1be50e9a7b6d2685f640eda6351505fd3fa6d883cff5d69f5107473e36225e93"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.4.0/argy-darwin-arm64.zip"
      sha256 "6ea2e6ba3541202155fcd787d2e556e785988071f86f544237b22223cbb815f6"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.4.0/argy-linux-x64.tar.gz"
      sha256 "b3519d5ae42c47ddc72122b73632aed2de3f17e133b2c570c889f631529e65b7"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.4.0/argy-linux-arm64.tar.gz"
      sha256 "01ca32c3635ef4dfeee9e01be5fa3157d77ce94ffc31895b525f0c5312822414"
      def install
        bin.install "argy"
      end
    end
  end
end
