class Recall < Formula
  desc 'Cache and replay CLI commands'
  homepage 'https://github.com/tomafro/recall'
  url 'https://github.com/tomafro/recall/archive/refs/tags/v0.1.0.tar.gz'
  sha256 '3ffb9278e3cbd68dab033087379fcdf8663878dfff82be33324f2253b574a7d0'
  license 'MIT'

  head 'https://github.com/tomafro/recall.git'

  depends_on 'rust'

  def install
    system 'cargo', 'install', *std_cargo_args
  end

  test do
    system 'recall', '--help'
  end
end
