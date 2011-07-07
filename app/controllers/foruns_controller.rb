class ForunsController < ApplicationController
    inherit_resources
    defaults :resource_class => Forum
end
