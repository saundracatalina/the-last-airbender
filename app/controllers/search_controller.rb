class SearchController < ApplicationController
  def index
    nation = params[:nation]

    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1")
    response = conn.get("characters?perPage=100?page=1&affiliation=Fire Nation")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
