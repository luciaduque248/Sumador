library verilog;
use verilog.vl_types.all;
entity tablasum_vlg_check_tst is
    port(
        D               : in     vl_logic_vector(3 downto 0);
        U               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end tablasum_vlg_check_tst;
