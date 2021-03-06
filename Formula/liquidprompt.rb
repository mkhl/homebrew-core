class Liquidprompt < Formula
  desc "Adaptive prompt for bash and zsh shells"
  homepage "https://github.com/nojhan/liquidprompt"
  url "https://github.com/nojhan/liquidprompt/archive/v_1.10.tar.gz"
  sha256 "5a1e01b86e81002ac20c61cbd96f5fd276db7f3fa09ef220f3db0fb7aa614e24"
  head "https://github.com/nojhan/liquidprompt.git"

  bottle :unneeded

  def install
    share.install "liquidpromptrc-dist"
    share.install "liquidprompt"
  end

  def caveats; <<-EOS.undent
    Add the following lines to your bash or zsh config (e.g. ~/.bash_profile):
      if [ -f #{HOMEBREW_PREFIX}/share/liquidprompt ]; then
        . #{HOMEBREW_PREFIX}/share/liquidprompt
      fi

    If you'd like to reconfigure options, you may do so in ~/.liquidpromptrc.
    A sample file you may copy and modify has been installed to
      #{HOMEBREW_PREFIX}/share/liquidpromptrc-dist

    Don't modify the PROMPT_COMMAND variable elsewhere in your shell config;
    that will break things.
    EOS
  end
end
