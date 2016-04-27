require 'trading/version'

require 'virtus'

require 'logger'

module Trading
  autoload :Errors, 'trading/errors'

  class << self
    attr_writer :logger, :api_uri, :api_key

    # Helper to configure .
    #
    # @yield [Odin] Yields the {Trading} module.
    def configure
      yield self
    end

    def logger
      @logger ||= Logger.new($stdout).tap do |log|
        log.progname = name
      end
    end
  end
end
