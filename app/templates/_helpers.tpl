{{/*
Generic labels for each Kubernetes resource
*/}}
{{- define "app.labels" -}}
app.kubernetes.io/name: {{ include "app.fullName" . }}
app.kubernetes.io/version: {{ .Release.Name }}-{{ .Release.Revision }}
app: {{ include "app.fullName" . }}
group: {{ .Values.app.group }}
app.fullName: {{ include "app.fullName" . }}
{{- end }}