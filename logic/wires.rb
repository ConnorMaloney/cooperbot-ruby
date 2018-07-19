module Wires
    def defuse_wires(configuration, bomb) # configuration is what gets carried over from the speech file...

        #This is where cooper's logic will be to defuse the wires. 
        #So, How to do this? The following are the rules:

        # First...determine how many wires there are.

        #Cooper asks you...or maybe you just tell Cooper? Him asking you might be a waste of time.

        #First, tell Cooper how many wires there are. This can be from 3-6.

        #Only ONE wire needs to be cut.

        # SPEAK: "[colour1] wire [colour2] wire [colour3] wire [colour4] wire [colour5] wire [colour6] wire"


        # Store the colour of wires into an array, called COLOURS[].

        # --- CASE 1: THREE WIRES ---
        # If (colour1, colour2, and colour3 are NOT null, then we know theres only 3 wires)
            # (If colour1, 2, or 3 is NOT red -> CUT SECOND WIRE)
            # (Elif colour3 is WHITE -> CUT LAST WIRE)
            # (Elif COLOURS array.count blue > 1 -> CUT LAST BLUE WIRE) #NOTE: This can be improved, I can have Cooper figure out the specific position of the wire
            # (Else -> CUT LAST WIRE)

        # --- CASE 2: FOUR WIRES ---
        # If (colour1, colour2, colour3, and colour4 are NOT null, then we know theres only 4 wires)
            # (If COLOURS array.count red > 1 AND bomb.LastSerialDigit is Odd -> CUT LAST RED WIRE) NOTE: This can be improved, I can have Cooper figure out the specific position of the wire#
            # (Elif colour4 is YELLOW AND COLOURS array.count red == 0 -> CUT FIRST WIRE)
            # (Elif COLOURS array.count blue == 1 -> CUT FIRST WIRE)
            # (Elif COLOURS array.count yellow > 1 -> CUT LAST WIRE)
            # (Else -> CUT SECOND WIRE)

        # --- CASE 3: FIVE WIRES ---
        # If (colour1, colour2, colour3, colour4, and colour5 are NOT null, then we know theres only 5 wires)
            # (If colour5 is BLACK AND the bomb.LastSerialDigit is Odd -> CUT FOURTH WIRE)
            # (Elif COLOURS array.count red == 1 AND COLOURS array.count > 1 -> CUT FIRST WIRE)
            # (Elif COLOURS array.count black == 0 -> CUT SECOND WIRE)
            # (Else -> CUT FIRST WIRE)
        

        # --- CASE 4: SIX WIRES ---
        # If (all colours are NOT null, then we know theres 6 wires)
            # (If COLOURS array.count yellow == 0 AND bomb.LastSerialDigit is Odd -> CUT THIRD WIRE)
            # (Elif COLOURS array.count yellow == 1 AND COLOURS array.count white > 1 -> CUT FOURTH WIRE)
            # (Elif COLOURS array.count red == 0 -> CUT LAST WIRE)
            # (Else -> CUT FOURTH WIRE)
    end
end


