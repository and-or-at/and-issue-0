require_relative './page/page_template'
require_relative './data'

index_path = Data[:path]
index_file = File.join("../..", index_path, "index.html")

class IndexMaker
  def initialize(pages, file, page_template, stylesheet='./style.css')
    @pages = pages
    @file = file
    @template = page_template
    @stylesheet = stylesheet
  end

  def header
    @file.write("<html>")
    @file.write("<head>")
    @file.write("<link rel='stylesheet' href='#{@stylesheet}' />")
    @file.write("</head>")
    @file.write("<body>")
    @file.write("<a href='/'>home</a>")
    @file.write("<h1>List of Pages</h1>")
    @file.write("<table>")
  end

  def body(reverse=true)

    if reverse
      @pages = @pages.reverse
   end
     @pages.each do |page|
      @file.write("  <tr>\n")
      @file.write("  <td>\n")
      pa = @template.new(page).render
      @file.write(pa)
      @file.write("  </td>\n")
      @file.write("  </tr>\n")
    end
  end

  def footer
    @file.write("</table>")
    @file.write("</body>")
    @file.write("</html>")
  end
end

File.open(index_file, 'w') do |file|
  im = IndexMaker.new(Index[:pages], file, Page)
  im.header
  im.body
  im.footer

  # build an html template using ERB
  # find the place in the file to write
  # add text to template
end
