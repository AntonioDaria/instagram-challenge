require 'rails_helper'

RSpec.describe PicsController, type: :controller do

  describe "GET /new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    pending "responds with 200" do
      pic :create, params: { pic: { description: "testdescription"} }
      expect(response).to redirect_to(pics_url)
    end

    pending "creates a pic" do
      pic :create, params: { pic: { description: "testdescription"} }
      expect(Pic.find_by(description: "testdescription")).to be
    end
  end





    describe "GET /" do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end


end
