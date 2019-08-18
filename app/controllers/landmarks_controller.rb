class LandmarksController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @figures = Figure.all
    erb :'landmarks/new'
  end

end
