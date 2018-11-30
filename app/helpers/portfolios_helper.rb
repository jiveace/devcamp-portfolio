module PortfoliosHelper
  def default_thumbnail
    "https://upload.wikimedia.org/wikipedia/en/thumb/7/7e/NJPW-Logo.png/200px-NJPW-Logo.png"
  end

  def default_main_image
    "https://cdn.sescoops.com/wp-content/uploads/2018/01/njpw-australia-696x392.jpg"
  end

  def portfolio_img img, type
    if img
      img
    elsif type == 'thumb'
      default_thumbnail
    else
      default_main_image
    end
  end
end
