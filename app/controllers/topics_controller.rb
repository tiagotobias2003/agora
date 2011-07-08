class TopicsController < ApplicationController
    inherit_resources
    belongs_to :forum

    actions :new, :create, :show

    before_filter :build_new_post, :only => :show

    protected
    def build_new_post
      @new_post = resource.posts.build
    end
end
