require File.expand_path("../abstract-atoum", __FILE__)

class AbstractAtoumPhar < AbstractAtoum
  def phar
    stub + ".phar"
  end

  def wrapper
    <<-EOS.undent
      #!/usr/bin/env bash
      /usr/bin/env php -d allow_url_fopen=On -d detect_unicode=Off #{libexec}/#{phar} "$@"
    EOS
  end

  def install
    libexec.install phar
    (libexec/stub).write wrapper
    chmod 0755, (libexec/stub)
    bin.install_symlink (libexec/stub)
  end

  test do
    system stub, "--test-it"
  end
end
