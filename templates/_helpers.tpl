{{/*
Expand the name of the chart.
*/}}
{{- define "MarshTravel.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "bitnews-chart.labels" -}}
helm.sh/chart: {{ include "bitnews-chart.chart" . }}
{{ include "bitnews-chart.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}