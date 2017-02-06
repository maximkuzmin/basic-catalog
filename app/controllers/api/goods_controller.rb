class Api::GoodsController < Api::ApplicationController
  def index
    q = params[:q].mb_chars.downcase
    @goods = Good
      .active.preload(:company)
      .where('lower(goods.name) LIKE ? OR lower(goods.description) LIKE ?', "%#{q}%", "%#{q}%")
      .order('goods.updated_at ASC')
  end

  def show
    @good = Good.find(params[:id])
  end
end
