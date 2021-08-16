if [ -x "$(which go)" ]; then
	export $(go env | grep GOCACHE | xargs)
	export $(go env | grep GOMODCACHE | xargs)

	export $(go env | grep GOPATH | xargs)
	export PATH="$GOPATH/bin:$PATH"
fi
