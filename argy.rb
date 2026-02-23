# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "0.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v0.1.0/argy-darwin-x64.zip"
      sha256 "f7f0a57bc4a7c2b10135014ab6c4805c676a4a6ae0e9f2d161eeda7303af033d"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v0.1.0/argy-darwin-arm64.zip"
      sha256 "055294fe368522f7ae05d64bbbeefef48808af54ac01184fb4cc82b8eda55b70"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.1.0/argy-linux-x64.tar.gz"
      sha256 "a2c722db82d50a6498741a5a194700834e1f551e9fad1c8fcb21fa3871d45dc8"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v0.1.0/argy-linux-arm64.tar.gz"
      sha256 "16d99b3749f999780df5732b6ff13db49530f2976a9c693b9ad4cc6f4cfd3411"
      def install
        bin.install "argy"
      end
    end
  end
end
