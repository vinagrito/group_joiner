module GroupsHelper
  def group_image_or_default
    @group_image_url || "http://www.vijugi.com/img/2013/08/abstract-background-images-hd-wallpaper.jpg"
  end

  def group_description_or_default
    @group_description || "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
      Maecenas commodo cursus consequat. Duis cursus molestie risus, ut rhoncus nunc
      elementum rutrum. Duis accumsan urna eget pellentesque sagittis. Nunc ornare
      orci id est bibendum bibendum. Vivamus at nunc malesuada, tristique erat at,
      sodales lacus. Vestibulum dapibus pretium est id tincidunt. Praesent dignissim
      magna magna, vel pretium mauris malesuada ut. Nullam vel suscipit mauris. Morbi
      mollis nulla mauris. Quisque ac fermentum lorem, non placerat ligula. Nulla eu
      justo id massa tincidunt dignissim. Sed ultrices sollicitudin arcu, vel pretium nulla."
  end
end
