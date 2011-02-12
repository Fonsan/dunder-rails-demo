class FrontController < ApplicationController
  def index
    Widget.find_by_sql("select sleep(1),'one'")
    Widget.find_by_sql("select sleep(1),'two'")
  end

end
