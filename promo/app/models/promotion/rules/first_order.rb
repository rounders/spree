class Promotion::Rules::FirstOrder < PromotionRule

  def eligible?(order)            
    return true if order.complete?
    order.user && order.user.orders.complete.count == 0
  end

end
