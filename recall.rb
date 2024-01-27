class Recall < Formula
  desc 'Cache and replay CLI commands'
  homepage 'https://github.com/tomafro/recall'
  url 'https://github.com/tomafro/recall/releases/download/v0.1.0/recall-0.1.0-2fc134c.tar.gz'
  sha256 '4e1ea8f7cedbf971fc0d4461d50b03873bf6972156d2fd97211e7c12b31f3f79'
  license 'MIT'

  def install
    bin.install 'recall'
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
