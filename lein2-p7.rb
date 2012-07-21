require 'formula'

#except for the version this formula is a carbon copy of the leiningen formula for 1.7.1

class Lein2P7 < Formula
  homepage 'http://github.com/technomancy/leiningen'
  url 'http://github.com/technomancy/leiningen/tarball/2.0.0-preview7'
  sha1 'c047121b033dec68bcd946395f6a0c19f4ebc23f'

  head 'https://github.com/technomancy/leiningen.git'

  def install
    bin.install "bin/lein"
    system "#{bin}/lein", "self-install"
    (etc+'bash_completion.d').install 'bash_completion.bash' => 'lein-completion.bash'
  end

  def caveats; <<-EOS.undent
    Standalone jar and dependencies installed to:
    $HOME/.m2/repository
    EOS
  end
end
