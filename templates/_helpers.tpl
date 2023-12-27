# Frontend
{{- define "frontend.deployment.name" -}}
{{- printf "myapp" }}
{{- end }}

{{- define "frontend.deployment.labels" -}}
app: {{- printf "myapp" -}}
{{- end -}}

{{- define "frontend.service.name" -}}
{{- printf "myapp" -}}
{{- end }}


#backend
{{- define "backend.deployment.name" -}}
{{- printf "server" }}
{{- end }}

{{- define "backend.deployment.labels" -}}
app: {{- printf "server" -}}
{{- end -}}

{{- define "backend.service.name" -}}
{{- printf "server" -}}
{{- end }}

#mongo
{{- define "mongodb.deployment.name" -}}
{{- printf "mongo" }}
{{- end }}

{{- define "mongodb.service.name" }}
{{- printf "mongo"}}
{{- end}}

#mongodb-sts
{{- define "mongodbs.sts.service.name" }}
{{- printf "mongo" }}
{{- end }}

#cronjob
cronjob
{{- define "cronjob.name" }}
{{- printf "mongodb-backup" }}
{{- end}}
 
{{- define "cronjob.host.name" }}
{{- printf "mongo"}}
{{- end}}

#pv

{{- define "storageclass.name" -}}
{{ printf "ebs-gp3" }}
{{- end}}

#hpa
{{- define "hpa.name" -}}
{{ printf "backend-hpa" }}
{{- end}}