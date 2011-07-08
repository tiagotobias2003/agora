class TopicsController < InternalController
    inherit_resources
    belongs_to :forum

    actions :new, :create, :show

    before_filter :build_new_post, :only => :show
    before_filter :user_association, :only => :create


    protected
    def build_new_post
      @new_post = resource.posts.build
    end
end
