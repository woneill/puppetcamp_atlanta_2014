$ js-yaml hiera.yaml
JS-YAML: bad indentation of a mapping entry at line 9, column 13:
            type: global
                ^
$ ruby -e "require 'yaml'; YAML.load_file('hiera.yaml')"
yaml.rb:133:in `load':
    syntax error on line 9, col 14: `        value: true' (ArgumentError)
    from yaml.rb:133:in `load'
    from yaml.rb:144:in `load_file'
    from yaml.rb:143:in `open'
    from yaml.rb:143:in `load_file'
    from -e:1
