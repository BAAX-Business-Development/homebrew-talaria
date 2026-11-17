class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.27.1"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.27.1/talaria-aarch64-apple-darwin"
      sha256 "73e6993010cf8fce2b8a3cdc1b88117d9db155d4f6e3fca6a2790d17deaff29a"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.27.1/talaria-x86_64-apple-darwin"
      sha256 "94860c75cf5ef17623c4bf854517631d2c9ab08b672152925a648e30ff3fbaf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.27.1/talaria-aarch64-unknown-linux-musl"
      sha256 "400f964cc94a90368698978e290d8746d705203c7feddb1e7aad6e89837bca26"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.27.1/talaria-x86_64-unknown-linux-musl"
      sha256 "dd01636f11afc3f93a7a94ec9297463c6319a85d59b9f52598f02fc1ec4f7a79"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
