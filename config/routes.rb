Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  scope module: :v2, constraints: ApiVersion.new('v2') do
    resources :todos do
      resources :items
    end
  end
  
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :todos do
      resources :items
    end
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup',     to: 'users#create'
end