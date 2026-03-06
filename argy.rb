# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.18"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.18/argy-darwin-x64.zip"
      sha256 "51e197b8cf176c9e99403b9887c14a1a347cc00153818c479f4a366922d562b4"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.18/argy-darwin-arm64.zip"
      sha256 "d1559c5e761b6fe65051f855889242824ac07298c6412035f4996c1594e03a1d"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.18/argy-linux-x64.tar.gz"
      sha256 "ccde098f19d398d928c4704cb59e3d406d8f3e6262c858fe7475d2d17fba3dfd"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.18/argy-linux-arm64.tar.gz"
      sha256 "c40634d0ef819fe9fb56f8d55bf9947fee7c2e048547b330b8ef3f82769542a9"
      def install
        bin.install "argy"
      end
    end
  end
end
