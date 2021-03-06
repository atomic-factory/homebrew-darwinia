# coding: utf-8
class Dargo < Formula
  desc "The way to GO."
  homepage "https://github.com/darwinia-network/darwinia.go"

  version "0.1.2"
  url "https://github.com/darwinia-network/darwinia.go/releases/download/v0.1.2/dargo-osx.tar.gz"
  sha256 "42571ee45abec151a39f4e276fc1fda81b3fa50da1cd5958aaf462a15f1f7ae1"

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/dargo"]
  end

  def caveats; <<~EOS
     By default, binaries installed by darwinia will be placed into:

     #{libexec}

     The way to Go

     Usage:
       dargo [command]

     Available Commands:
       epoch       Calculate epoch cache
       header      Get eth block by number
       help        Help about any command
       proof       Proof the block by number
       shadow      Start shadow service
       version     Print the version number of dargo

     Flags:
       -h, --help   help for dargo

     Use "dargo [command] --help" for more information about a command.

     happy hacking!!! 🧙
  EOS
  end
end
