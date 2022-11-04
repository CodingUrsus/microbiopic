library(curatedMetagenomicData)
library(phyloseq)
library(ggtree)
sample_data <- curatedMetagenomicData::AsnicarF_2017.metaphlan_bugs_list.stool()


class(sample_data)

head(pData(sample_data))

metaphlan_table <- exprs(sample_data)

asnicar_physeq <- ExpressionSet2phyloseq(sample_data, relab=FALSE, phylogenetictree = TRUE)

ggtree(phy_tree(asnicar_physeq), layout="circular") +
  geom_tiplab2(size=2)



















