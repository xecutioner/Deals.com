module DealHelper
  def deal_data(deal)
    [
    '<div class="dealdata">',
            '<div class="time">',
                '<h5>Time remaining</h5>',
                '<div class="clock"><span id = "cntdwn">00:00:00</span></div>',
            '</div>',
            '<div class="price">',
                '<div class="prices">',
                    '<div class="value">Rs',
                    deal.actual_price,
                    '<span class="c">.00</span>',
                    '</div>',
                    '<div class="dealprice">Rs',
                     deal.discounted_price,
                     '<span class="c">.78</span></div>',
                    '</div>',
            '</div>',
            '<div class="buynow">',
                link_to("Buy Now",new_deal_transaction_path(deal),:id =>"buy-now"),
            '</div>',
'</div>'].join(' ').html_safe
  end

  def display_deals(deal)
    ['<div class = "display-deals">',
      '<span class = "deal-content"><div class = "display-title">',
      link_to(deal.title,deal_path(deal)),
      '</div>',
      '<div class = "display-description" >',
        deal.description,
         '</div></span>',
      '<span class= "deal-thumbnail">',
       image_tag('Mock_ups.png',:size=>"60x60"),
        '</span>',
    '</div>'
    ].join(" ").html_safe
  end
end

