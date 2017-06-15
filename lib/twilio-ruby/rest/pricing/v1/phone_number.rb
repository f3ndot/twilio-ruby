##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Pricing < Domain
      class V1 < Version
        class PhoneNumberList < ListResource
          ##
          # Initialize the PhoneNumberList
          # @param [Version] version Version that contains the resource
          # @return [PhoneNumberList] PhoneNumberList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}

            # Components
            @countries = nil
          end

          ##
          # Access the countries
          # @param [String] iso_country The iso_country
          # @return [CountryList] CountryList
          def countries(iso_country=:unset)
            if iso_country != :unset
              return CountryContext.new(
                  @version,
                  iso_country,
              )
            end

              @countries ||= CountryList.new(
                  @version,
              )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Pricing.V1.PhoneNumberList>'
          end
        end

        class PhoneNumberPage < Page
          ##
          # Initialize the PhoneNumberPage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [PhoneNumberPage] PhoneNumberPage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of PhoneNumberInstance
          # @param [Hash] payload Payload response from the API
          # @return [PhoneNumberInstance] PhoneNumberInstance
          def get_instance(payload)
            PhoneNumberInstance.new(
                @version,
                payload,
            )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Pricing.V1.PhoneNumberPage>'
          end
        end

        class PhoneNumberInstance < InstanceResource
          ##
          # Initialize the PhoneNumberInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @return [PhoneNumberInstance] PhoneNumberInstance
          def initialize(version, payload)
            super(version)

            # Marshaled Properties
            @properties = {
                'name' => payload['name'],
                'url' => payload['url'],
                'links' => payload['links'],
            }
          end

          def name
            @properties['name']
          end

          def url
            @properties['url']
          end

          def links
            @properties['links']
          end

          ##
          # Provide a user friendly representation
          def to_s
            "<Twilio.Pricing.V1.PhoneNumberInstance>"
          end
        end
      end
    end
  end
end