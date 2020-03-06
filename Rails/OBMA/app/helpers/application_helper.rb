module ApplicationHelper
  def sortable(column, title)
    direction = (column == params[:sort] && params[:direction] == "asc") ? "desc" : "asc"
    link_to title, :sort => column, :direction => direction#, :remote => true
  end
end
