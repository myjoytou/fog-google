module Fog
  module Storage
    class GoogleJSON
      class Mock
        include Utils
        include Fog::Google::Shared

        def initialize(options = {})
          shared_initialize(options[:google_project], GOOGLE_STORAGE_JSON_API_VERSION, GOOGLE_STORAGE_JSON_BASE_URL)
        end

        def signature(_params)
          "foo"
        end
      end
    end
  end
end
