module API
  METWIT_BASE_URL = "https://api.metwit.me/"
  @http_client = AFHTTPClient.alloc.initWithBaseURL(NSURL.URLWithString(METWIT_BASE_URL))

  def self.json_request_operation(url_request, success_block, fail_block)
    @int_success_block = lambda do |request, response, json|
      result = json['result']
      api_error = json['error']
      api_error_domain = json['domain']
      if api_error != nil and api_error_domain != nil
        fail_block.call(request, result, api_error)
      else
        success_block.call(request, response, result)        
      end

    end

    @int_fail_block = lambda do |request, response, error|
      case response.statusCode
      when 403
        #SLOGGA
      when 500
        #DIHANE
      end

      failure.call(request, response, error)
        
    end
        
    AFJSONRequestOperation.JSONRequestOperationWithRequest(url_request, success:@int_success_block, failure:@int_fail_block)

  end
  
  def self.login_with_facebook(access_token, success_block, fail_block)
    params = {'access_token' => access_token}
    url_request = @http_client.requestWithMethod("POST", path:"users/login/facebook/token/", parameters:params)
    operation = json_request_operation(url_request, success_block, fail_block)
    
    NSOperationQueue.alloc.init.addOperation(operation)

  end

  def self.logout
  end
  
end
