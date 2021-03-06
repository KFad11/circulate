module IconsHelper
  def feather_icon(icon_name, **options)
    opts = options.deep_merge({data: {feather: icon_name}})
    tag.i(**opts)
  end

  def icon_stat(icon_name, content = nil, css_class: nil, title: nil, &block)
    content = capture(&block) if block_given?
    content = "-" if content.blank?
    tag.li(title: title, class: css_class) do
      tag.i(data: {feather: icon_name}) + content
    end
  end
end
