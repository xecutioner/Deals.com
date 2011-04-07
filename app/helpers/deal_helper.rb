module DealHelper
  def deal_data
    [
    '<div class="dealdata">',
            '<div class="time">',
                '<h5>Time remaining</h5>',
                '<div class="clock"><span>00:00:00</span></div>',
            '</div>',
            '<div class="price">',
                '<div class="prices">',
                    '<div class="value">Rs',
                    '144',
                    '</div>',
                    '<div class="dealprice">Rs 44<span class="c">.78</span></div>',
                    '</div>',
            '</div>',
            '<div class="buynow">',
                '<a href="#" title=""></a>',
            '</div>',
'</div>'].join(' ').html_safe
  end
end

