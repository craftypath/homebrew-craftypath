# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nextver < Formula
  desc "Automatic semver versioning"
  homepage "https://github.com/craftypath/nextver/"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/craftypath/nextver/releases/download/0.5.0/nextver_0.5.0_darwin_amd64.tar.gz"
      sha256 "6bf0e92222f3459d7fecc7e3eb3ea8c6b7abe2c6e8e0919af935333c56ed7d0b"

      def install
        bin.install "nextver"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/craftypath/nextver/releases/download/0.5.0/nextver_0.5.0_darwin_arm64.tar.gz"
      sha256 "e37408ab09ab29cd517917e7b8ac0b12303fac5d5e6d2bb69c5415b69c52c71e"

      def install
        bin.install "nextver"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/craftypath/nextver/releases/download/0.5.0/nextver_0.5.0_linux_amd64.tar.gz"
        sha256 "ca93633073f5e684ac2bf531e2ef456862c932ebfaa4d9a6d1de42c6f689bf32"

        def install
          bin.install "nextver"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/craftypath/nextver/releases/download/0.5.0/nextver_0.5.0_linux_arm64.tar.gz"
        sha256 "15f4fde8c23068561dfd28a3e9ab7918a625fef40406386c4aad672dcd9c18c0"

        def install
          bin.install "nextver"
        end
      end
    end
  end

  test do
    system "#{bin}/nextver --version"
  end
end
