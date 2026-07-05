# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.14.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.0/argy-darwin-x64.zip"
      sha256 "42db323a47066fd53898584c8cbb55082cea77811f56c433bc5d889b5919705c"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.0/argy-darwin-arm64.zip"
      sha256 "e1aef04668aeae97a100a3ab13db776d638363dee3ae8d3377337a9462030eab"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.0/argy-linux-x64.tar.gz"
      sha256 "e1b018135e96b9cb42e59e95fc3365a059dab78c0bb2852b8ddfaa0e5152a665"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.14.0/argy-linux-arm64.tar.gz"
      sha256 "aa7b61155fee764065e981da55a1f119e016ffdd5bfa69cd7fd8c432a9737dde"
      def install
        bin.install "argy"
      end
    end
  end
end
