# 1. Set a common base
FROM ubuntu:focal as base

# 2. Set required CNB information
ENV CNB_USER_ID=1000
ENV CNB_GROUP_ID=1000
ENV CNB_STACK_ID="io.buildpacks.boc.stacks.focal"
LABEL io.buildpacks.stack.id="io.buildpacks.boc.stacks.focal"

# 3. Create the user
RUN groupadd cnb --gid ${CNB_GROUP_ID} && \
  useradd --uid ${CNB_USER_ID} --gid ${CNB_GROUP_ID} -m -s /bin/bash cnb

# 4. Install common packages
RUN apt-get update && \
  apt-get install -y julia python3-pip && \
  rm -rf /var/lib/apt/lists/*

# 5. Set user and group (as declared in base image)
USER ${CNB_USER_ID}:${CNB_GROUP_ID}
