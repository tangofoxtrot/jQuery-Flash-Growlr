
  module JqueryFlashGrowlr
  
    def jquery_flash_growlr(options={})
      output = ""
      defaults = { :stay => true }.merge(options)
      [:error, :warning, :info, :notice].each do |key|
        if flash[key]
          output << display_flash_growlr(key, flash[key], defaults)
        end
      end
      output
    end
  
    def display_flash_growlr(type, text, options={})
      options[:text] = text
      options[:type] = type
      %(jQuery.noticeAdd(#{options.to_json});\n)
    end
  
    def jquery_flash_growlr_tag(options={})
      output = ["<script type='text/javascript'>"]
      output << "  $(document).ready(function() {"
      output << jquery_flash_growlr(options)
      output << "  });"
      output << "</script>"
      output.join("\n")
    end

  end