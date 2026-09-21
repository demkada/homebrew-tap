# typed: false
# frozen_string_literal: true

class Argy < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/demkada/argy-code"
  version "2.7.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.1/argy-darwin-x64.zip"
      sha256 "f9388311d1abbad42d3f2bcfebbd8a24b17a6a5b87f27326a9b3cbbbf42fa18c"

      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.1/argy-darwin-arm64.zip"
      sha256 "5a65681e1c8cb7d58427d06950606c38a878e1240295cb20bb5600127c893e14"

      def install
        bin.install "argy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.1/argy-linux-x64.tar.gz"
      sha256 "c3abbf9f8b689a6b712b6b1843f9e7ab6cabaa7749876541f9ce9c803c5dea60"
      def install
        bin.install "argy"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/demkada/argy-code/releases/download/v2.7.1/argy-linux-arm64.tar.gz"
      sha256 "85db3fa3825018b7c8723dee8da9751bcae5a9e60db9ec46164616a6644376c2"
      def install
        bin.install "argy"
      end
    end
  end
end
