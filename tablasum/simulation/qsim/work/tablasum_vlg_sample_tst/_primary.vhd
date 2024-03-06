library verilog;
use verilog.vl_types.all;
entity tablasum_vlg_sample_tst is
    port(
        sum             : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end tablasum_vlg_sample_tst;
