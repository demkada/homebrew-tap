# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.19"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.19/argy-darwin-x64.zip"
      sha256 "dfd37cf10b419faaa39076f3256638642cd4c196e23090f44175bbd76cb9cf24"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.19/argy-darwin-arm64.zip"
      sha256 "298f7edf6c88f2aae67d8c97229b6c9dc27e43e7dff835c15ae06074e79fa4f9"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.19/argy-linux-x64.tar.gz"
      sha256 "978b67f50edda941018d648d2cec196c4dbf893dee97b1c7a97bb13cf19966c3"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.19/argy-linux-arm64.tar.gz"
      sha256 "169356edc86468656ae8984a8a09987401604277fa715b308d115b4ceaa89dfa"
      def install
        bin.install "argy"
      end
    end
  end
end
