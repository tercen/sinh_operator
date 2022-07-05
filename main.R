library(tercen)
library(dplyr)

#library(tim)
#options("tercen.workflowId"= "6015a4dd34cef273755e1a1b1500427b")
#options("tercen.stepId"= "d31241f6-173f-473a-9307-2b4b3c5c0882")

ctx <- tercenCtx()
scale <- NULL
if (as.character(ctx$op.value('scale')) != "NULL")  scale  = as.integer(ctx$op.value('scale'))

#scale <- 5

df.out<-ctx  %>%
  select(.ri, .ci, .y) %>%
  group_by(.ri, .ci) %>%
  mutate(sinh = (sinh(.y) * scale)) %>%
  select(.ri, .ci, sinh) %>%
  ctx$addNamespace()

df.out %>%
  ctx$save()

#tim::build_test_data(res_table = df.out, ctx = ctx, test_name = "test1")
