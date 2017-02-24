require File.expand_path("../../Abstract/abstract-atoum-phar", __FILE__)

class Atoum < AbstractAtoumPhar
  url "https://github.com/atoum/atoum/releases/download/3.0.0/atoum.phar"
  sha256 "432dd25e2bdde084041eaa1675c476ad0068300c6b456d95abbb754a3c95aa16"

  conflicts_with "php71"
end
