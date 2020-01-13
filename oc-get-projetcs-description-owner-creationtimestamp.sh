# usando lo switch -k della sort è possibile cambiare il campo per il sorting

  while read data1 data2 data3 data4 ; do printf "%-60s ; %-70s ; %-50s ; %25s \n" "$data1 " "$data2 " "$data3 " "$data4 ";  done < <(oc get projects -o template  --template '{{range .items}}{{.metadata.name}}{{"\t"}}{{index .metadata.annotations "openshift.io/display-name"}}{{"\t"}}{{index .metadata.annotations "openshift.io/requester"}}{{"\t"}}{{.metadata.creationTimestamp}}{{"\n"}}{{end }}' | sort -t, -k2 )
