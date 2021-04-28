Rails.application.routes.draw do
    get("/:hand", { :controller => "application", :action => "play" })
    # get("/", { :controller => "application", :action => "homepage" })
end
