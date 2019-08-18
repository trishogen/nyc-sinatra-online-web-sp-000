class FiguresController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figures' do
    figure = Figure.create(params[:figure])

    if !params[:title][:name].empty?
      figure.titles << Title.create(name: params[:title][:name])
    end

    if !params[:title][:name].empty?
      figure.landmarks << Landmark.create(name: params[:landmark][:name])
    end

    figure.save
  end
end
