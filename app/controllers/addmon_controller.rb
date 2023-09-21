class AddmonController < ApplicationController
    def index
    end
    def create
        @monster = Monster.new
    end
end