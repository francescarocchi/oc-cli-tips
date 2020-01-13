# usando lo switch -k della sort è possibile cambiare il campo per il sorting

IFS=,; while read data1 data2 data3 ; do printf "%-60s ; %-70s ; %-50s \n" "$data1 " "$data2 " "$data3";  done < <(oc get projects -o template  --template '{{range .items}}{{.metadata.name}},{{index .metadata.annotations "openshift.io/description"}},{{index .metadata.annotations "openshift.io/requester"}}{{"\n"}}{{end }}' | sort -t, -k2 )
