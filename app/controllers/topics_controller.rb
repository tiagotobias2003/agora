class TopicsController < ApplicationController
    inherit_resources
    belongs_to :forum
end
