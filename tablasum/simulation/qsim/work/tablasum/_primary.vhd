library verilog;
use verilog.vl_types.all;
entity tablasum is
    port(
        sum             : in     vl_logic_vector(4 downto 0);
        D               : out    vl_logic_vector(3 downto 0);
        U               : out    vl_logic_vector(3 downto 0)
    );
end tablasum;
