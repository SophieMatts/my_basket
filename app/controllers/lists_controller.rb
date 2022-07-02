require "google/cloud/datastore"

class ListsController < ApplicationController
  $datastore = Google::Cloud::Datastore.new(
    project_id: 'plated-mesh-355110',
    credentials: '/Users/sophiemattacks/Repos/Google/my_basket/plated-mesh-355110-58e596b5549b.json'
  )


  def index
    query = $datastore.query('Item')
      # where ("done", "=", false)
    @items = $datastore.run query
  end

  def add_item
    item = $datastore.entity 'Item' do |t|
      t['name'] = params[:item_name]
      t['email'] = 'sophiemattacks1@gmail.com'
      t['quantity'] = '1'
    end

    $datastore.save item

    redirect_to '/lists/index'
  end
end