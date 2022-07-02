require "google/cloud/datastore"

class ListsController < ApplicationController

  def index
    datastore = Google::Cloud::Datastore.new(
      project_id: 'plated-mesh-355110',
      credentials: '/Users/sophiemattacks/Repos/Google/my_basket/plated-mesh-355110-58e596b5549b.json'
    )

    query = datastore.query('Item')
      # where ("done", "=", false)
    @items = datastore.run query
  end
end
