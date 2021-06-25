function! airflow#themes#codeschool#refresh()
    lua require("codeschool.plugins.airline").refresh()
endfunction

call airflow#themes#codeschool#refresh()
