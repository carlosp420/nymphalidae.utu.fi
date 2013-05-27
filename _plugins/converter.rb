module Jekyll

    class RewriteExtension < Converter
        safe true
        priority :high

        def matches(ext)
            ext =~ /^\.origExtension$/i 
        end

        def output_ext(ext)
            ".htm"
        end

        def convert(content)
            content.origExtension
        end

    end
end
