=begin
#service.proto

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: version not set

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class HaberdasherApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # MakeHat produces a hat of mysterious, randomly-selected color!
    # 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ExampleHat]
    def make_hat(body, opts = {})
      data, _status_code, _headers = make_hat_with_http_info(body, opts)
      return data
    end

    # MakeHat produces a hat of mysterious, randomly-selected color!
    # 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExampleHat, Fixnum, Hash)>] ExampleHat data, response status code and response headers
    def make_hat_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HaberdasherApi.make_hat ..."
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling HaberdasherApi.make_hat"
      end
      # resource path
      local_var_path = "/twirp/twitch.twirp.example.Haberdasher/MakeHat"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExampleHat')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HaberdasherApi#make_hat\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
