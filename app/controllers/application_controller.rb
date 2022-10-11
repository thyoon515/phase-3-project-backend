class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/dealerships" do
      dealerships = Dealership.all
      dealerships.to_json
  end

  post "/dealerships" do
    dealership = Dealership.create(
      name: params[:name],
      location: params[:location],
      contact: params[:contact]
      )
      dealership.to_json
  end

  get "/cars" do
      cars = Car.all
      cars.to_json(include: :dealership)
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
