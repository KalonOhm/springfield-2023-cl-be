module News 
  class SearchController < ApplicationController
    def search_feed 
      @issues = Issue.search(params[:query])
      @groups = Group.search(params[:query])
    end
  end
end
