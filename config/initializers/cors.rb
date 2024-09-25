Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    #許可したいURLを設定
    origins "http://localhost:3000"
    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end