class DealSweeper < ActionController::Caching::Sweeper
  observe Deal
  
  #add what to sweep
  def sweep(deal)
    expire_page deals_path
    expire_page "/"  
  end
  
  #sweep after
  alias_method :after_create, :sweep
  alias_method :after_update, :sweep
  alias_method :after_destroy, :sweep
end