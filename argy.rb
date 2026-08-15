# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.4.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.4.0/argy-darwin-x64.zip"
      sha256 "50af329c12617c20d80c4f87d7b21e8169e5939ae650b45233050b45a03781d5"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.4.0/argy-darwin-arm64.zip"
      sha256 "869d3e94650aa4fba3b7c0f7a1ee01e016f8ccf0f9962ae886fa7f5ef4f04701"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.4.0/argy-linux-x64.tar.gz"
      sha256 "d4b1ee26fed4f964efd584b68f041c6273d6efadae331965983cf7fcb57a4200"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.4.0/argy-linux-arm64.tar.gz"
      sha256 "a70efc5f289810192c4ae04eb525ba436b7295ea5ec79e1d4e145b8096f125d2"
      def install
        bin.install "argy"
      end
    end
  end
end
