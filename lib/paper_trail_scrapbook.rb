require 'adamantium'
require 'concord'
require 'equalizer'
require 'ice_nine'
require 'pathname'
require 'paper_trail_scrapbook/config'
require 'paper_trail_scrapbook/chapter'
require 'paper_trail_scrapbook/changes'
require 'paper_trail_scrapbook/life_history'
require 'paper_trail_scrapbook/version'

# Library namespace
#
# @api private
module PaperTrailScrapbook
  class << self
    # Returns PaperTrailScrapbook's configuration object.
    # @api private
    def config
      @config ||= PaperTrailScrapbook::Config.instance
      yield @config if block_given?
      @config
    end
    alias configure config

    def version
      VERSION::STRING
    end
  end
end
