FROM r-base

# install Debian dependencies
RUN apt-get update && apt-get install -y libcurl4-openssl-dev libssl-dev libxml2-dev

# install R dependencies
RUN R -e "install.packages(c('data.table','pbapply','seqinr','stringr','mixtools','plyr','reshape2','tidyr','BiocManager','caret') ,dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "BiocManager::install(c('viper','preprocessCore','limma'))"

# install vespa.db
ADD ./ ./
RUN R CMD INSTALL ./

# docker build -t docker.pkg.github.com/califano-lab/vespa.db/vespa.db:latest ./
# docker push docker.pkg.github.com/califano-lab/vespa.db/vespa.db:latest
