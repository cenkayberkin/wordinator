class WordersController < ApplicationController
  def index
    if params[:word1].present? && params[:word2].present?
      word1,word2 = params[:word1],params[:word2]
      result = Worder.new.anagram?(word1,word2)
      render json: {word1: word1, word2: word2, result: result, status: "Ok"}
    else
      render json: {status: "Please enter word1 and word2 in query string"}
    end
  end
end
