library(tercen)
library(dplyr)

ctx = tercenCtx()
scale = NULL
if (as.character(ctx$op.value('scale')) != "NULL")  scale  = as.integer(ctx$op.value('scale'))

ctx  %>%
  select(.ri, .ci, .y) %>%
  group_by(.ri, .ci) %>%
  mutate(sinh = (sinh(.y) * scale)) %>%
  select(.ri, .ci, sinh) %>%
  ctx$addNamespace() %>%
  ctx$save()
