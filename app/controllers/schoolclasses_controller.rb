class SchoolclassesController < ApplicationController

  def index
    @schoolclasses = SchoolClass.all
end

def new
@schoolclass = SchoolClass.new
end



end
