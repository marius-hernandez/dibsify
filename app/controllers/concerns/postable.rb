# my code
module Postable
    extend ActiveSupport::Concern

    included do
        before_action :set_posts, only: :index
    end

    private
    def set_posts
        @posts= Post.all.order(created_at: :desc)
    end
end
