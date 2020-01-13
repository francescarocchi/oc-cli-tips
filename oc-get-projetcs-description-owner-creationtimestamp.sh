# usando lo switch -k della sort è possibile cambiare il campo per il sorting

IFS=,; while read data1 data2 data3 data4 ; do printf "%-60s ; %-70s ; %-50s ; %25s \n" "$data1 " "$data2 " "$data3" "$data4";  done < <(oc get projects -o template  --template '{{range .items}}{{.metadata.name}},{{index .metadata.annotations "openshift.io/description"}},{{index .metadata.annotations "openshift.io/requester"}},{{.metadata.creationdate}}{{"\n"}}{{end }}' | sort -t, -k2 )
