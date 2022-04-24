FROM androidsdk/android-30

RUN apt-get update
RUN apt-get install zip
RUN curl -s "https://get.sdkman.io" | bash
RUN chmod a+x "$HOME/.sdkman/bin/sdkman-init.sh"

SHELL ["/bin/bash", "-c"] 
RUN source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk install gradle 7.4.2
