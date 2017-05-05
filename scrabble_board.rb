require 'text-table'
@key_for_scrabble = [
                    ["Free Space", "*"],
                    ["Double Letter", "2L"],
                    ["Triple Letter", "3L"],
                    ["Double Word", "2W"],
                    ["Triple Word", "3W"]
                    ]

@scrabble_board = [
            zero = [" ","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"],
            :separator,
            @a = ["A","3W"," "," ","DL"," "," "," ","3W"," "," "," ","DL"," "," ","3W"],
            :separator,
            @b = ["B","","2W","","","","3L","","","","3L","","","","2W",""],
            :separator,
            @c = ["C","","","2W","","","","2L","","2L","","","","2W","",""],
            :separator,
            @d = ["D","2L","","","2W","","","","2L","","","","2W","","","2L"],
            :separator,
            @e = ["E","","","","","2W","","","","","","2W","","","",""],
            :separator,
            @f = ["F","","3L","","","","3L","","","","3L","","","","3L",""],
            :separator,
            @g = ["G","","","2L","","","","2L","","2L","","","","2L","",""],
            :separator,
            @h = ["H","3W"," "," ","DL"," "," "," ","*"," "," "," ","DL"," "," ","3W"],
            :separator,
            @i = ["I","","","2L","","","","2L","","2L","","","","2L","",""],
            :separator,
            @j = ["J","","3L","","","","3L","","","","3L","","","","3L",""],
            :separator,
            @k = ["K","","","","","2W","","","","","","2W","","","",""],
            :separator,
            @l = ["L","2L","","","2W","","","","2L","","","","2W","","","2L"],
            :separator,
            @m = ["M","","","2W","","","","2L","","2L","","","","2W","",""],
            :separator,
            @n = ["N","","2W","","","","3L","","","","3L","","","","2W",""],
            :separator,
            @o = ["O","3W"," ","#","DL"," "," "," ","3W"," "," "," ","DL"," "," ","3W"]
          ]

          puts @scrabble_board.to_table

          puts "Which row to put your letter?"
          row_selection = gets.chomp
          def row_select choice
            case choice
            when "a" then @a
            when "b" then @b
            when "c" then @c
            when "d" then @d
            when "e" then @e
            when "f" then @f
            when "g" then @g
            when "h" then @h
            when "i" then @i
            when "j" then @j
            when "k" then @k
            when "l" then @l
            when "m" then @m
            when "n" then @n
            when "o" then @o
            else
              puts "Please select a valid row?"
              row_selection = gets.chomp
              row_select(row_selection)
            end
          end
          players_row = row_select(row_selection)
          puts "which row do you want your letter on?"

          column_selection = gets.chomp.to_i

          puts "place your letter now: " 
          p players_row[column_selection] = gets.chomp

          puts @key_for_scrabble.to_table
          puts @scrabble_board.to_table
