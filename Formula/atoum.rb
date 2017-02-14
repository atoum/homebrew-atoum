require File.expand_path("../../Abstract/abstract-atoum", __FILE__)

class Atoum < AbstractAtoum
  url "https://github.com/atoum/atoum/releases/download/2.9.0/atoum.phar"
  sha256 "5e36d71bdff57c16dd55eaf948671ac72d561f32bd4bca32b5891d02bdca43b8"

  conflicts_with "php71"
end
