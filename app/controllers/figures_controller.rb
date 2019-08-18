class FiguresController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figures' do
    figure = Figure.create(params[:figure])
    figure.landmarks = Landmark.find_or_create_by()
  end
end
