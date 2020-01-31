class Parser
  def initialize(schema)
    @schema = parse(schema)
    @options = {}
  end

  def input(cmd_line)
    @options = parse(cmd_line)
  end

  def valid?
    # 1. @options.keys is a subset of @schema.keys
    # 2. @options.values match their corresponding types in @schema.values
  end

  private

  def parse(line)
    options = {}
    ndx = 0
    key = ''
    cmd_line_options = line.split
    while ndx < cmd_line_options.length do
      opt = cmd_line_options[ndx]
      if opt[0] == '-'
        key = opt
        options[key] = nil
      else
        options[key] = opt
      end
      ndx += 1
    end
    options
  end
end
