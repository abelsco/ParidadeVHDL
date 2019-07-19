LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CODE6_1 IS
	PORT(
		input: IN BIT_VECTOR(3 DOWNTO 0);
		output: OUT BIT
	);
END;

ARCHITECTURE Corpo OF CODE6_1 IS
BEGIN
	PROCESS(input)
		VARIABLE conta: INTEGER RANGE 0 TO 4;
	BEGIN
		conta := 0;
		FOR i IN input'RANGE LOOP
			CASE input(i) IS 
				WHEN '1' => conta := conta + 1;
				WHEN OTHERS => NULL;
			END CASE;
		END LOOP;
		conta := conta MOD 2;
		CASE conta IS 
			WHEN 0 => output <= '0';
			WHEN OTHERS => output <= '1';
		END CASE;
	END PROCESS;
END;		
	
	