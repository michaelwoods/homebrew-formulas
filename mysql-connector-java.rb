require 'formula'

class MysqlConnectorJava < Formula
  homepage 'http://dev.mysql.com/downloads/connector/j/'
  url 'http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.25.tar.gz/from/http://cdn.mysql.com/'
  version '5.1.22'
  sha1 '4c2f716951e13394bba0b905db5f738918cb7fdf'

  def install
    doc.install Dir['docs/*']
    libexec.install Dir['*.jar']
  end

end
