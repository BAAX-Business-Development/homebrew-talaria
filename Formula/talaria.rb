class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.26.0"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.26.0/talaria-aarch64-apple-darwin"
      sha256 "1b03c991d3bfa35296e1af04af9581bf5b7d04ebe37e1297df2d75a36724afe2"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.26.0/talaria-x86_64-apple-darwin"
      sha256 "7d8788f2d54b4956cdbc8f39cbfa0d992680e9a79f0624d817108e9c8b36fb07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.26.0/talaria-aarch64-unknown-linux-musl"
      sha256 "02f69638e8bbffa17ffe0ba6de82463a2c97e49a51d1fde3fc20a5d230a2c20e"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.26.0/talaria-x86_64-unknown-linux-musl"
      sha256 "845196fdefeed98f79bc12d1e32c79c97ca3ce48518ddd1c267de44f0042be79"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
