JSONAPI.configure do |config|
  config.resource_cache = Rails.cache
  #config.default_caching = true

  #options are :none, :offset, :paged, or a custom paginator name
  config.default_paginator = :paged


  config.default_page_size = 50  #default is 20
  config.maximum_page_size = 100 #default is 100
end