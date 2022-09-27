# 1. Set a common base
FROM ubuntu:jammy as base

# 2. Set required CNB information
ENV CNB_USER_ID=1000
ENV CNB_GROUP_ID=1000
ENV CNB_STACK_ID="io.buildpacks.boc.stacks.jammy"
LABEL io.buildpacks.stack.id="io.buildpacks.boc.stacks.jammy"

# 3. Create the user
RUN groupadd cnb --gid ${CNB_GROUP_ID} && \
  useradd --uid ${CNB_USER_ID} --gid ${CNB_GROUP_ID} -m -s /bin/bash cnb

# 4. Install common packages
RUN apt-get update && \
  apt-get install -y python3 python3-pip curl && \
  rm -rf /var/lib/apt/lists/*

# TODO: Fix. Temporary solution. Buildpacks cannot include any other directories than in the layers folder
RUN mkdir -p /layers/savy_julia/julia/.julia && \
  ln -s /layers/savy_julia/julia/.julia /home/cnb/.julia && \
  chown -R ${CNB_USER_ID}:${CNB_GROUP_ID} /layers/savy_julia/julia

#ln -s /home/cnb/.julia /layers/savy_julia/julia/.julia && \
# 5. Start a new run stage
FROM base as run

# 6. Set user and group (as declared in base image)
USER ${CNB_USER_ID}:${CNB_GROUP_ID}

# 7. Start a new build stage
FROM base as build

# 8. Install packages that we want to make available at build time
RUN apt-get update && \
  rm -rf /var/lib/apt/lists/* 

# 9. Set user and group (as declared in base image)
USER ${CNB_USER_ID}:${CNB_GROUP_ID}
