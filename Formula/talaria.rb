class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.30.0"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.30.0/talaria-aarch64-apple-darwin"
      sha256 "5591f6d86bc75c1293679a93c430cf13b3c1d38b735b6ef2992eeee8621a93d0"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.30.0/talaria-x86_64-apple-darwin"
      sha256 "220cf7ff068371d6964e6c4cfb88e9a34a0d02454ee55cba1c93028ea305d169"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.30.0/talaria-aarch64-unknown-linux-musl"
      sha256 "3b25a16bad29d59ddd1ab1d0baf546631b90c24ebef19b06749030f31803bca7"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.30.0/talaria-x86_64-unknown-linux-musl"
      sha256 "dba741c5df7dca15050c48c4fa3083389bc0761175cb2180e208947cd7cfd06d"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
