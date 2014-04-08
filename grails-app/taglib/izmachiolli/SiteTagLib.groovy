package izmachiolli

class SiteTagLib {
    static namespace = "izm"
    def header = { attrs, body ->
        out << "<div id='header' style='height:"+attrs.height+"'>"+attrs.content+"</div>"
    }

    def footer = { attrs, body ->
        out << "<div id='footer' style='height:"+attrs.height+"'>"+attrs.content+"</div>"
    }

    def left = { attrs, body ->
        out << "<div id='left' style='width:"+attrs.width+"'>"+attrs.content+"</div>"
    }

    def right = { attrs, body ->
        out << "<div id='right' style='width:"+attrs.width+"'>"+attrs.content+"</div>"
    }

    def body = { attrs, body ->
        out << "<div id='body'>"+attrs.content+"</div>"
    }
}
