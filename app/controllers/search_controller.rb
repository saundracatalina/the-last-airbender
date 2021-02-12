class SearchController < ApplicationController
  def index
    nation = params[:nation]

    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1")
    response = conn.get("characters?affiliation=fire+nation")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
