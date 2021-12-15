vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -L cycloneiv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.HamDecoder_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
