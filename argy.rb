# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.5.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.2/argy-darwin-x64.zip"
      sha256 "410567916a05cf187220063edc7158369b7e20485ed80a39b7f0a14505240573"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.2/argy-darwin-arm64.zip"
      sha256 "cb3366559c2d0183e2b2705e101f845cbfb1525cf38cd6091cbb651cbb69a146"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.2/argy-linux-x64.tar.gz"
      sha256 "2042e4695bf77de6c3f0c50c2497c37da3eed3b73e200e21c92ef3eea11dfc29"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.5.2/argy-linux-arm64.tar.gz"
      sha256 "2bfd549e03ac53f888d28dcd10d958f7dbf9df4522b6dad14e9bb21bbbdb7728"
      def install
        bin.install "argy"
      end
    end
  end
end
