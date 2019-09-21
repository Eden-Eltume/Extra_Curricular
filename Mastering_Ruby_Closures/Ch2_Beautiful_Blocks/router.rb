routes = Router.new do
  match '/about' => 'home#about'
  match '/users' => 'users#index'
end

class Router
  def initialize
    yield(self)
  end

  def match(route)
    puts route
  end
end