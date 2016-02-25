module SlackRubyBot
  module Loggable
    extend ActiveSupport::Concern

    module ClassMethods
      def logger
        @logger ||= begin
          $stdout.sync = true
          Logger.new(STDOUT)
        end
      end
    end

    private

    def logger
      self.class.logger
    end
  end
end
