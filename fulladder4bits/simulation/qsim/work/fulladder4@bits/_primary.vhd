library verilog;
use verilog.vl_types.all;
entity fulladder4Bits is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Sum             : out    vl_logic_vector(3 downto 0);
        Cout            : out    vl_logic
    );
end fulladder4Bits;
