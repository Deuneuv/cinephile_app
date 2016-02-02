require 'spec_helper'

describe PagesController do
  render_views

 before(:each) do
   @base_titre = "CinephileApp"
  end

  describe "GET 'home'" do
    it "Devrait fonctionner" do
      get 'home'
      response.should be_success
    end
    
    it "Devrait avoir le bon titre" do
	get 'home'
	response.should have_selector("title", :content => @base_titre + " | Accueil")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should be have good title" do
	get 'contact'
	response.should have_selector("title", :content =>  @base_titre + " | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should be have good title" do
	get 'about'
	response.should have_selector("title", :content =>  @base_titre + " | A Propos")
    end
  end

describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end

    it "should be have good title" do
	get 'help'
	response.should have_selector("title", :content =>  @base_titre + " | Aide")
    end
  end



end
