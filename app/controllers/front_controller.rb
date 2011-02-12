class FrontController < ApplicationController
  def index
    @first = Widget.dunder_load.find_by_sql("select sleep(1),'first'")
    @second = Widget.dunder_load.find_by_sql("select sleep(1),'second'")
    
  end
end
