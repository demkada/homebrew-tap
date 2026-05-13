# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.10.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.0/argy-darwin-x64.zip"
      sha256 "52e150baa0ec3adfe7b738a77abb6c5917a8ab3ea1ced5f138d502ededb26721"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.0/argy-darwin-arm64.zip"
      sha256 "09eca55123d8e422d87e62aadf1648ca3b9323ab59a02686e705920a0c4a9602"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.0/argy-linux-x64.tar.gz"
      sha256 "4413127e8b6e58914732c9982e1b93fa106116423df3c9491b94377f5e427cd9"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.10.0/argy-linux-arm64.tar.gz"
      sha256 "21d35b373304b1a8a84c969391a1e7e25a739528265fe2974a99f0470d563886"
      def install
        bin.install "argy"
      end
    end
  end
end
