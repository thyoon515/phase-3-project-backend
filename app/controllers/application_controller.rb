class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/dealerships" do
      dealership = Dealership.all
      dealership.to_json
  end

  get "/cars" do
      car = Car.all
      car.to_json
  end

  delete '/cars/:id' do
      car = Car.find(params[:id])
      car.destroy
      car.to_json
  end
end
