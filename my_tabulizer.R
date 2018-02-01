#uses tablula java library
#https://ropensci.org/tutorials/tabulizer_tutorial/

library("tabulizer")
f <- "tablex.pdf"
out1 <- extract_tables(f)
df <- do.call(rbind.data.frame, out1)

colnames(df) <- as.character(unlist(df[1,]))
