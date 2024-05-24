{{- /*
Renders a value that contains template for resourcesMap.
Usage:
{{ include "resource.tplValue" ( dict "value" .Values.path.to.the.Value "context" $) }}
*/ -}}
{{- define "resource.tplValue" -}}
    {{- if typeIs "string" .value }}
        {{- tpl .value .context }}
    {{- else }}
        {{- tpl (.value | toYaml) .context }}
    {{- end }}
{{- end -}}
