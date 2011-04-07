module ApplicationHelper
  def foot_out
   [ '<div id="foot-out">',
        '<div id="foot">',
            '<a href="http://www.sprout-technology.com" title="Sprout" class="credit">Powered by SprOut Technology</a>',
            '<ul class="footlist">',
                '<li class="primary"><h4><a href="" title="">How it Works</a></h4>',
                '<p>Lorem ipsum dolor sit amet, consectetur adipiscing <a href="" title="">elit</a>. Aenean faucibus tincidunt" mollis. Quisque ullamcorper, leo ac bibendum scelerisque, leo odio congue leo, eu ultrices leo augue sit amet erat. Sed ut tempus diam. </p>',
                '</li>',
                '<li class="primary"><h4><a href="" title="">About</a></h4>',
                '<ul>',
                    '<li><a href="" title="">Quisque ullamcorper</a></li>',
                    '<li><a href="" title="">Leo ac bibendum</a></li>',
                    '<li><a href="" title="">Scelerisque</a></li>',
                    '<li><a href="" title="">Leo odio congue leo</a></li>',
                    '<li><a href="" title="">Eu ultrices</a></li>',
                '</ul></li>',
                '<li class="primary"><h4>Lit dolor</h4>',
                '<p>Loremincidunt dolor. Nam adipiscing ligula nisi. <a href="" title="">Aliquam</a> in tellus risus, at fermentum neque. Nulla accumsan dictum est, a sc </p>',
                '</li>',
            '</ul>',
        '</div>',
    '</div>'].join(' ').html_safe

  end
end

