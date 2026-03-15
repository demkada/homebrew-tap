# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.3.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.2/argy-darwin-x64.zip"
      sha256 "968db3ba672356f31453b217479acd035ac1a621ba6b651687785b08e321dc3c"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.2/argy-darwin-arm64.zip"
      sha256 "84528f6622271f3f17a5b1e0ea5e4af3c988cf080102eb1f1ec51334ed216280"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.2/argy-linux-x64.tar.gz"
      sha256 "299902f31f7148ceeaf72f3631d6f88f9eed38778e5c8db589ea4805e23ca890"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.2/argy-linux-arm64.tar.gz"
      sha256 "cfd5bdc53cab64c2a0d676fa7f67f132ec42a54e7cbadb11b737a035fd70b564"
      def install
        bin.install "argy"
      end
    end
  end
end
