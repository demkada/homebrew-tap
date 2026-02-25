# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.6"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.6/argy-darwin-x64.zip"
      sha256 "22f4236286e1acdda7836877a416e9fd7888c24ce6c76dd48cf6c27e739dc314"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.6/argy-darwin-arm64.zip"
      sha256 "5f8aefffb1bfa5881a8840187eedc98670d7518061ddcff5632c568d01ac61d3"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.6/argy-linux-x64.tar.gz"
      sha256 "a8601d20e4015661b56fdea6acbfdc3943ca64099de8ee8af7bb24b5e5a96de5"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.6/argy-linux-arm64.tar.gz"
      sha256 "250033f5eb83aeab8ba7c9e2749473cda65c8c154aeaa9c7acb2d12fb7f189aa"
      def install
        bin.install "argy"
      end
    end
  end
end
