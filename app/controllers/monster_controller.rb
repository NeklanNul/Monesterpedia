class MonsterController < ApplicationController
   def new
    @monster = Monster.new
   end

end