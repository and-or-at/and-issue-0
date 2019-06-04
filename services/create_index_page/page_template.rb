class Page
  def initialize(page_content)
    @title = page_content[:title]
    @page = page_content[:page]
  end

  def template(&block)
%Q(<div class='page'>
  #{yield}
</div>)
  end

  def render
    template do
      %Q(
      <p class='no'>
        #{@page}
      </p>
      <h2 class='title'>
      <a href="/page/#{@page}/">#{@title}</a>
      </h2>
      )
    end.gsub("/n", '')
  end
end


