# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.1/argy-darwin-x64.zip"
      sha256 "38ec952e40ce0442ac379122eadd1245505af2017b2b12e1a38db6ebdbcb65b4"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.1/argy-darwin-arm64.zip"
      sha256 "c4c0f7029e8aabca534c5db15cec32f63aebcf81406088020a3f89dff4789d30"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.1/argy-linux-x64.tar.gz"
      sha256 "ceea7623b8e0163fa463202cf6ba6b163501e9025fb557404d84beac37d14b66"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.1/argy-linux-arm64.tar.gz"
      sha256 "515073d9ca4468c29b407031dc40db782d36bb1f9be3b7012c5574ea96a100ed"
      def install
        bin.install "argy"
      end
    end
  end
end
