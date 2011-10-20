module Hominid
  class STS < API
    # MailChimp STS Documentation: http://apidocs.mailchimp.com/sts/1.0/
    MAILCHIMP_STS_VERSION = "1.0"

    def initialize(api_key, config = {})
      defaults = {
        :api_version        => MAILCHIMP_STS_VERSION,
        :secure             => false,
        :timeout            => nil,
        :domain             => 'sts.mailchimp.com'
      }
      
      super(api_key, defaults.merge(config))
    end
  end
end
