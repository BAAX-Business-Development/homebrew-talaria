class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.28.1"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.28.1/talaria-aarch64-apple-darwin"
      sha256 "be0142f13458549851299ef6884e08bccc1e85a854f4e7d70a8efdcbb7dab707"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.28.1/talaria-x86_64-apple-darwin"
      sha256 "99fb9099d18d11f2e607e862f576e859e88c438cd74625c33fed56470ddae85c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.28.1/talaria-aarch64-unknown-linux-musl"
      sha256 "45f356721730e5fd25945d20f351e7a3fc40dd5152f7e8ee104a6a5db3e57ada"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.28.1/talaria-x86_64-unknown-linux-musl"
      sha256 "c87f918552541594fec0c5f966c6084769fe06d4dac14cfe65f0c54118f7e108"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
