{{- define "template-deep-dive" -}}
{{- printf "%s-%s" .Release.Name  .Chart.Name   | trunc 63 | trimSuffix "-" -}}

{{- end -}}

