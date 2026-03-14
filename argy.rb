# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.3.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.0/argy-darwin-x64.zip"
      sha256 "6bbd650267a2cdff75f32f6158fde9a1d2f7c0b5d8001bbcfa63f9ec40bd351c"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.0/argy-darwin-arm64.zip"
      sha256 "90b675d0ca727f1206a389ac330744738c37ccd42173c810d633d3a48248af3b"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.0/argy-linux-x64.tar.gz"
      sha256 "f9c1d5e75c7ee0ac872e55ac41ff1ff15282d76b22371084446657691481eab7"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.3.0/argy-linux-arm64.tar.gz"
      sha256 "747a2f7c1ee04f7432e8ef8357180e8f7b33404ddc87dc2b1feefcb55b4af51e"
      def install
        bin.install "argy"
      end
    end
  end
end
