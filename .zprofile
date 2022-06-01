eval "$(/opt/homebrew/bin/brew shellenv)"

export MAVEN_OPTS="-Xmx2g -XX:ReservedCodeCacheSize=512m"

export GOPATH=$(go env GOPATH)

export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:$HOME/.poetry/bin

# Created by `pipx` on 2022-05-02 23:12:07
export PATH="$PATH:/Users/$USER/.local/bin"
