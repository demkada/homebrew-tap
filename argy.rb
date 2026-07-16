# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.0.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.0.1/argy-darwin-x64.zip"
      sha256 "e45b7a17744ecf5b848c3cf694e4693da83f33fca4daf0cfcc511ca63c46c57e"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.0.1/argy-darwin-arm64.zip"
      sha256 "fe5cf8a8b97574acf2c10f6cc08ea734cf1c681fe95e6d8d51e1b940f2203660"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.0.1/argy-linux-x64.tar.gz"
      sha256 "ba5816751cfa23e45d542a30b5a4a3622072eb50d206ebc24def5a663d2cdd5c"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.0.1/argy-linux-arm64.tar.gz"
      sha256 "30308301c6ebdbf8f1cde2974dbc80aee6c12a47c99e150451f978f107fdce1e"
      def install
        bin.install "argy"
      end
    end
  end
end
