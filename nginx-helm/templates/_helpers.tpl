{{- define "templating-deep-dive.labels.fullname" -}}
{{- $defaultName := printf "%s-%s" .Release.Name .Chart.Name }}
{{- .Values.customName | default $defaultName | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{- define "templating-deep-dive.selectorLabels" -}}
app: {{ .Chart.Name }}
release: {{ .Release.Name }}
managed-by: "helm"
{{- end -}}

{{/* expects an integer or string to be passed as the context*/}}
{{- define "templating-deep-dive.validations.portRange" -}}
{{- $sanitizatedPort := int . -}}
{{/*Service Port validation*/}}
{{- if or (lt $sanitizatedPort 1) (gt $sanitizatedPort 65535) -}}
{{- fail "Error: Ports must always be between 1 and 65535." -}}
{{- end -}}
{{- end -}}

{{/* expects a port to be passed as the context*/}}
{{- define "templating-deep-dive.validations.service" -}}
{{- include "templating-deep-dive.validations.portRange" .port -}}

{{/*Service type validation*/}}
{{- $allowSvcTypes := list "ClusterIP" "NodePort" -}}
{{- if not (has .type $allowSvcTypes) -}}
{{- fail (printf "Invalid service type %s. Supported values are: %s" .type (join "," $allowSvcTypes)) -}}
{{- end -}}
{{- end -}}