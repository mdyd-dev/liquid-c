require "bundler/setup"
require "liquid/c"

@template = Liquid::Template.parse(
"{%- if name == 'tobi' -%}
    Inside if
{%- else %}
    Inside Else
{%- endif -%}

Hi Frank
", line_numbers: false)
# puts @template.render({'name' => 'tobi'})
#puts @template.root.body.disassemble

# Hi Tobi
# Hi Tobi
# {%- if name == 'tobi' -%}
# {%- if name == 'tobi' %}
# Inside 1
# {%- endif -%}
# {%- else %}
# Hi Frank
# {%- endif -%}
# {%- if name == 'tobi' -%}
# {%- if name == 'tobi' %}
# Inside 2
# {%- endif -%}
# {%- else %}
# Hi Frank
# {%- endif -%}