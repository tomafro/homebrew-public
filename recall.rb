class Recall < Formula
  desc 'Cache and replay CLI commands'
  homepage 'https://github.com/tomafro/recall'
  url 'https://github.com/tomafro/recall/archive/refs/tags/v0.1.0.tar.gz'
  sha256 '3ffb9278e3cbd68dab033087379fcdf8663878dfff82be33324f2253b574a7d0'
  license 'MIT'

  depends_on 'rust' => :build

  def install
    system 'cargo', 'install', *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test recall`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system 'false'
  end
end
