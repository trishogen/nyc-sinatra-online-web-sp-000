class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    landmark = Landmark.create(params[:landmark])
  end

  get '/landmarks' do
    @landmarks = Landmarks.all
    erb :'landmarks/index'
  end

end
