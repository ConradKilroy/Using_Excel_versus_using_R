#source http://www.win-vector.com/blog/2018/02/r-tip-use-qc-for-fast-legible-quoting/

library("wrapr")  # get qc() definition

head(mtcars[, qc(mpg, cyl, wt)])

#                    mpg cyl    wt
# Mazda RX4         21.0   6 2.620
# Mazda RX4 Wag     21.0   6 2.875
# Datsun 710        22.8   4 2.320
# Hornet 4 Drive    21.4   6 3.215
# Hornet Sportabout 18.7   8 3.440
# Valiant           18.1   6 3.460


install.packages(qc(vtreat, cdata, WVPlots))
# shorter than the alternative:
#  install.packages(c("vtreat", "cdata", "WVPlots"))
