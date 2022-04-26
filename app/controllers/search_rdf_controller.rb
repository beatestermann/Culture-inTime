class SearchRdfController < ApplicationController
  def index
    @entities = if params[:spotlight]
                  Entity.spotlight(params[:spotlight]).paginate(page: params[:page])
                elsif params[:data_source]
                  Entity.data_source(params[:data_source]).paginate(page: params[:page]) 
                else
                  Entity.spotlight(1)
                end
    @count = Entity.count
  end

  def spotlight 
    @entities = Entity.spotlight(params[:spotlight]).paginate(page: params[:page])
    @count = Entity.count
    render "index"
  end

  def data_source
    @entities = Entity.data_source(params[:data_source]).paginate(page: params[:page])
    @count = Entity.count  # TODO: fix count i.e. Entity.data_source_count(params[:data_source])
    render "index"
  end
end