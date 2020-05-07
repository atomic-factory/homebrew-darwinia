# coding: utf-8
class DargoAT011 < Formula
  desc "The way to GO."
  homepage "https://github.com/darwinia-network/darwinia.go"

  version "0.1.1"
  url "https://github.com/darwinia-network/darwinia.go/releases/download/v0.1.1/dargo-osx.tar.gz"
  sha256 "0633a18effb399b730980e86dff7a446b4800166a04b45e0d75e8dbf43b80dcf"

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
