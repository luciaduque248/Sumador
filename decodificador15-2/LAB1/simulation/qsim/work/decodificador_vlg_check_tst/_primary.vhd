library verilog;
use verilog.vl_types.all;
entity decodificador_vlg_check_tst is
    port(
        SEG             : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end decodificador_vlg_check_tst;
