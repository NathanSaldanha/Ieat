class RestauranteNotifierJob < ApplicationJob
  queue_as :default

  def perform(customer_id)
    user = User.find(customer_id)
    puts 'Hello from Sidekiq'
    puts "Pedido criado por #{user.email}"
    # Do something later
  end
end
