require 'rails_helper'
RSpec.describe Api::V1::NetflixTitlesController, type: :request do
  # Search for title with text title-year
  describe "GET /api/v1/netflix_titles?q=" do
    let(:year) { "netflix_title-year"}
    let(:url) { "/api/v1/netflix_titles?q=#{:year}"}

it "calls NetflixTitle.search with correct parameters" do
      expect(NetflixTitle).to receive(:search).with(:year)
      get url
    end

it "returns the output of NetflixTitle.search" do
      allow(NetflixTitle).to receive(:search).and_return({})
      get url
      expect(response.body).to eq({}.to_json)
    end

it 'returns a success status' do
      allow(NetflixTitle).to receive(:search).with(:year)
      get url
      expect(response).to be_successful
    end
  end
end
