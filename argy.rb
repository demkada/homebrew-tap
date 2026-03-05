# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "1.0.14"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.14/argy-darwin-x64.zip"
      sha256 "8807b46298bacc9febc3d90c41dc3d15d304949da336b20eccc98b25e968f3a7"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.14/argy-darwin-arm64.zip"
      sha256 "e055f45410ef9af02de985b97b408fdbdc8b6507a0c928ac0dbc7c5093835a3a"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.14/argy-linux-x64.tar.gz"
      sha256 "a7dddbc6acdeb128b41dff93477e18b91aa1ec842dd20a1f0b62cadccb7f4c90"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v1.0.14/argy-linux-arm64.tar.gz"
      sha256 "9b6b4a551c8896eeab00419fe60a13437fad0fb21271d5fb914cb2cf292f5d93"
      def install
        bin.install "argy"
      end
    end
  end
end
