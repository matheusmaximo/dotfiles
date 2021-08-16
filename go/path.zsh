if [ -x "$(which go)" ]; then
	export $(go env | grep GOCACHE)
	export $(go env | grep GOMODCACHE)

	export $(go env | grep GOPATH)
	export PATH="$GOPATH/bin:$PATH"
fi
