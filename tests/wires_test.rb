wires = "red wire blue wire red wire"


# NOTE: So, can confirm that even though wires is NOT of type string, it behaves like one.
# 10.times { puts wires.upcase} # returns Pocketsphinx::Decoder::Hypothesis (10 times to visibly show it in output clutter to terminal)

# If wires == "red wire blue wire", then...
colours = wires.split # This removes all whitespace, and gives us ["red", "wire", "blue", "wire"]
colours.delete("wire") # This will remove all "wire" instances from array, leaving us with just ["red", "blue"]

puts colours.size == 3

case colours.size

# --- CASE 1: THREE WIRES ---
# If there are no red wires, cut the second wire.
# Otherwise, if the last wire is white, cut the last wire.
# Otherwise, if there is more than one blue wire, cut the last blue wire. 
# Otherwise, cut the last wire.
when 3
    puts "entered here"
    if colours.include?("red") == false 
        return puts "CUT THE SECOND WIRE"
    elsif colours.last == "white"
        return puts "CUT THE LAST WIRE"
    elsif colours.count("blue") > 1
        return puts "CUT THE LAST BLUE WIRE"
    else
        return puts "CUT THE LAST WIRE"
    end

# --- CASE 2: FOUR WIRES ---
# If there is more than one red wire and the last digit of the serial number is odd, cut the last red wire.
# Otherwise, if the last wire is yellow and there are no red wires, cut the first wire.
# Otherwise, if there is exactly one blue wire, cut the first wire.
# Otherwise, if there is more than one yellow wire, cut the last wire. 
# Otherwise, cut the second wire.
when 4
    if colours.count("red") > 1 && bomb.serialOdd == true 
        return puts "CUT THE LAST RED WIRE"
    elsif colours.last == "yellow" && colours.count("red") == 0
        return puts "CUT THE FIRST WIRE"
    elsif colours.count("blue") == 1
        return puts "CUT THE FIRST WIRE"
    elsif colours.count("yellow") > 1
        return puts "CUT THE LAST WIRE"
    else
        return puts "CUT THE SECOND WIRE"
    end

# --- CASE 3: FIVE WIRES --- 
# If the last wire is black and the last digit of the serial number is odd, cut the fourth wire.
# Otherwise, if there is exactly one red wire and there is more than one yellow wire, cut the first wire.
# Otherwise, if there are no black wires, cut the second wire.
# Otherwise, cut the first wire.
when 5
    if colours.last == "black" && bomb.serialOdd == true
        return puts "CUT THE FOURTH WIRE"
    elsif colours.count("red") == 1 && colours.count("yellow") > 1
        return puts "CUT THE FIRST WIRE"
    elsif colours.count("black") == 0
        return puts "CUT THE SECOND WIRE"
    else 
        return puts "CUT THE FIRST WIRE"
    end

# --- CASE 4: SIX WIRES ---
# If there are no yellow wires and the last digit of the serial number is odd, cut the third wire.
# Otherwise, if there is exactly one yellow wire and there is more than one white wire, cut the fourth wire.
# Otherwise, if there are no red wires, cut the last wire.
# Otherwise, cut the fourth wire.
when 6
    if colours.count("yellow") == 0 && bomb.serialOdd == true
        return puts "CUT THE THIRD WIRE"
    elsif colours.count("yellow") == 1 && colours.count("white") > 1
        return puts "CUT THE FOURTH WIRE"
    elsif colours.count("red") == 0
        return puts "CUT THE LAST WIRE"
    else
        return puts "CUT THE FOURTH WIRE"
    end 

else 
    return puts "done"
end 