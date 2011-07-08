class PostsController < ApplicationController
    inherit_resources
    belongs_to :topic

    actions :create

    include InheritedResources::DSL
    create! do |result|
      result.html { redirect_to forum_topic_path(@topic.forum, @topic) }
    end
end
