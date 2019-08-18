class LandmarksController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @figures = Figure.all
    erb :'figures/new'
  end

end
