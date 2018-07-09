def push(state)
  state[:stack] << state[:register]
end

def pop(state)
  state[:register] = state[:stack].pop
end

def add(state)
  state[:register] += state[:stack].pop
end

def sub(state)
  state[:register] -= state[:stack].pop
end

def div(state)
  state[:register] = state[:register] / state[:stack].pop
end

def mult(state)
  state[:register] = state[:register] * state[:stack].pop
end

def mod(state)
  state[:register] = state[:register] % state[:stack].pop
end

def myprint(state)
  puts state[:register]
end

MNEMONIC = { 'PUSH' => method(:push), 'POP' => method(:pop), 'ADD' => method(:add), 'SUB' => method(:sub),
             'MULT' => method(:mult), 'DIV' => method(:div), 'MOD' => method(:mod), 'PRINT' => method(:myprint) }.freeze

def minilang(program)
  state = { stack: [], register: 0, commands: program.split }
  while !state[:commands].empty?
    command = state[:commands].shift
    execute_command(command, state)
  end
end

def execute_command(command, state)
  if /\d+/.match?(command)
    state[:register] = command.to_i
  else
     MNEMONIC[command].call(state)
  end
end


