test_mzXML <- function() {
    file <- system.file("threonine", "threonine_i2_e35_pH_tree.mzXML", package = "msdata")
    mzxml <- openMSfile(file, backend="pwiz")
    checkTrue(class(mzxml)=="mzRpwiz")

    show(mzxml)
    length(mzxml)
    runInfo(mzxml)
    instrumentInfo(mzxml)
    peaks(mzxml)
    peaks(mzxml,1)
    peaks(mzxml, 2:3)
    peaksCount(mzxml)
    header(mzxml)
    header(mzxml,1)
    header(mzxml, 2:3)
    fileName(mzxml)
    close(mzxml) 
}
