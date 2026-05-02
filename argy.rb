# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.9.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.9.0/argy-darwin-x64.zip"
      sha256 "220c0f6daa60e7e8b7edb196bca3be68cf68263574d9d7e454698c40ef576b52"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.9.0/argy-darwin-arm64.zip"
      sha256 "afc321c8c10832faa9151e7a035f38585875d15da5493f4e051221961093f191"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.9.0/argy-linux-x64.tar.gz"
      sha256 "180690761312ea0fa9ffd94e089cadca8980cda459dc4af2a60c96609d9c1e0a"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.9.0/argy-linux-arm64.tar.gz"
      sha256 "7a3fc669bec193f02aee9e7e21899e5f365d7aaaa3cae3d3a790540fbef58a6a"
      def install
        bin.install "argy"
      end
    end
  end
end
