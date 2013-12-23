require "huxtable/version"
require "huxtable/engine" if defined?(::Rails)

module Huxtable
  def self.root
    File.expand_path '../..', __FILE__
  end
end
