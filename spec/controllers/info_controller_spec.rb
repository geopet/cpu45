require 'spec_helper'

describe InfoController do

  describe "GET 'overview'" do
    it "returns http success" do
      get 'overview'
      response.should be_success
    end
  end

  describe "GET 'aid_stations'" do
    it "returns http success" do
      get 'aid_stations'
      response.should be_success
    end
  end

  describe "GET 'course_description'" do
    it "returns http success" do
      get 'course_description'
      response.should be_success
    end
  end

  describe "GET 'directions'" do
    it "returns http success" do
      get 'directions'
      response.should be_success
    end
  end

  describe "GET 'rules'" do
    it "returns http success" do
      get 'rules'
      response.should be_success
    end
  end

  describe "GET 'schedule'" do
    it "returns http success" do
      get 'schedule'
      response.should be_success
    end
  end

end
