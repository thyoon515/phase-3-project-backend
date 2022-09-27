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

  post '/cars' do
    car = Car.create(
      make_and_model: params[:make_and_model],
      color: params[:color],
      year: params[:year],
      mileage: params[:mileage],
      price: params[:price],
      dealership_id: params[:dealership_id]
    )
    car.to_json
  end

  patch '/cars/:id' do
    car = Car.find(params[:id])
    car.update(
      make_and_model: params[:make_and_model],
      color: params[:color],
      year: params[:year],
      mileage: params[:mileage],
      price: params[:price],
      dealership_id: params[:dealership_id]
    )
    car.to_json
  end
end
