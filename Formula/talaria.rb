class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.27.0"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.27.0/talaria-aarch64-apple-darwin"
      sha256 "e5b83708cb6f8a9f095319407e3300b19fcedf841566a69a9ead2cacec6c54f7"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.27.0/talaria-x86_64-apple-darwin"
      sha256 "4864ece31734e1a87e2d407510fee40969eea91e17b5ea61c1975db1fd1f139a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.27.0/talaria-aarch64-unknown-linux-musl"
      sha256 "93d5807cad9ae5ce148e46033f287af297a51113dc16b41c397ad2722ae986ba"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.27.0/talaria-x86_64-unknown-linux-musl"
      sha256 "115b14628ffcbbd4371f0d2336d9ca578584dc1545253921756939d8b41ee24b"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
