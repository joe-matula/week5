class StaticPagesController < ApplicationController
    skip_before_action :authorize
end
