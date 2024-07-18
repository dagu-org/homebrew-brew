# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dagu < Formula
  desc "A No-code workflow executor that runs DAGs defined in a simple YAML format"
  homepage "https://github.com/dagu-dev/dagu"
  version "1.14.0"
  license "GNU General Public License v3.0"

  on_macos do
    on_intel do
      url "https://github.com/dagu-dev/dagu/releases/download/v1.14.0/dagu_1.14.0_darwin_amd64.tar.gz"
      sha256 "87961697a6f5919b3d4e0216a0ecc6a2ea0e5eb5a4cf4cb36e563e86da701acf"

      def install
        bin.install "dagu"
      end
    end
    on_arm do
      url "https://github.com/dagu-dev/dagu/releases/download/v1.14.0/dagu_1.14.0_darwin_arm64.tar.gz"
      sha256 "96de39566da5448ac6edd845e371c9bd9577aa4d2e4d59dfd3553275e1dcb087"

      def install
        bin.install "dagu"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dagu-dev/dagu/releases/download/v1.14.0/dagu_1.14.0_linux_amd64.tar.gz"
        sha256 "ac70c75f64f355c60497d0517cd528d16824688dd36d2691b87629c1a481d089"

        def install
          bin.install "dagu"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dagu-dev/dagu/releases/download/v1.14.0/dagu_1.14.0_linux_arm64.tar.gz"
        sha256 "000573adfeeb644a84c6023e30cb2f427dca2f78f6375b65d48ad556013ad035"

        def install
          bin.install "dagu"
        end
      end
    end
  end

  service do
    run [opt_bin/"dagu", "start-all"]
    keep_alive true
    error_log_path var/"log/dagu.log"
    log_path var/"log/dagu.log"
    working_dir var
  end
end
