module ApplicationHelper
  def foot_out
   [ '<div id="foot-out">',
        '<div id="foot">',
            '<a href="http://www.sprout-technology.com" title="Sprout" class="credit">Powered by SprOut Technology</a>',
            '<ul class="footlist">',
                '<li class="primary"><h4><a href="" title="">How it Works</a></h4>',
                '<p>Go Click Create a Deal or Select Any Deal to View About The Deal </p>',
                '</li>',
                '<li class="primary"><h4><a href="" title="">Partners</a></h4>',
                '<ul>',
                    '<li><a href="www.merodeal.com" title="">mero Deal</a></li>',
                    '<li><a href="www.harilo.com" title="">Harilo</a></li>',
                    '<li><a href="www.mucha.com" title="">Muncha</a></li>',
                    '<li><a href="www.mero-it.com" title="">MeroIT</a></li>',
                '</ul></li>',
                '<li class="primary"><h4>Contact Us</h4>',
                '<p>juno street california -19  <a href="" title="">Aliquam</a> in tellus risus, at fermentum neque. Nulla accumsan dictum est, a sc </p>',
                '</li>',
            '</ul>',
        '</div>',
    '</div>'].join(' ').html_safe

  end
  def check_if_logged_in
    if person_signed_in?
      return link_to("Sign Out",destroy_person_session_path)
    else
      link_to("sign In",new_person_session_path);
    end
  end
end

