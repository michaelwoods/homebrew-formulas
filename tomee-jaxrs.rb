require 'formula'

class TomeeJaxrs < Formula
  homepage 'http://tomee.apache.org/'
  url 'http://www.apache.org/dyn/closer.cgi?path=tomee/tomee-1.5.2/apache-tomee-1.5.2-jaxrs.tar.gz'
  version '1.5.2'
  sha1 'fae137442779365f80e54d2df6beab9c024326e3'

  # Keep log folders
  skip_clean 'libexec'

  def install
    # Remove Windows scripts
    rm_rf Dir['bin/*.bat']

    # Install files
    prefix.install %w{ NOTICE LICENSE RELEASE-NOTES RUNNING.txt }
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/tomee.sh" => "tomee-jaxrsprofile"
    bin.install_symlink "#{libexec}/bin/catalina.sh" => "catalina"
  end
end
