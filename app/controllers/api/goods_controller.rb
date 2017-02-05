class Api::GoodsController < Api::ApplicationController
  def index
    q = params[:q]
    @goods = Good.active
      .where('goods.name LIKE ? OR goods.description LIKE ?', "%#{q}%", "%#{q}%")
      .order('goods.updated_at ASC')
  end
end
