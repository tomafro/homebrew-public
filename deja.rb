class Deja < Formula
  desc 'Cache and replay CLI commands'
  homepage 'https://github.com/tomafro/deja'
  license 'MIT'

  head 'https://github.com/tomafro/deja.git', branch: "main"

  depends_on 'rust'

  def install
    system 'cargo', 'install', *std_cargo_args
  end

  test do
    system 'deja', '--help'
  end
end
