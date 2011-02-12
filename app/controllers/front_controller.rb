class FrontController < ApplicationController
  def index
    @one = Widget.find_by_sql("select sleep(1),'one'").first
    @two = Widget.find_by_sql("select sleep(1),'two'").first
  end

end
