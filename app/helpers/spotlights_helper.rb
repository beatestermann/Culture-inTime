module SpotlightsHelper

  def format_query(spotlight)
    #list_data_source_ids = spotlight.data_sources.map{ |d| d.id }.join(',')
    #"/search?query=#{spotlight.query}&start=#{spotlight.start_date}&end=#{spotlight.end_date}&data_source=#{list_data_source_ids}"
    search_rdf_path
  end
end
