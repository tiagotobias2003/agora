class PostsController < ApplicationController
    inherit_resources
    include InheritedResources::DSL
    belongs_to :topic

    create! do |result|
      result.html { redirect_to forum_topic_path(@topic.forum, @topic) }
    end
end
