{{- define "eventhub.global.env" -}}
- name: "DOTNET_ENVIRONMENT"
  value: "{{ .Values.global.dotnetEnvironment }}"
- name: "AppUrls__Account"
  value: "{{ .Values.global.accountUrl }}"
- name: "AppUrls__Www"
  value: "{{ .Values.global.wwwUrl }}"
- name: "AppUrls__Api"
  value: "{{ .Values.global.apiUrl }}"
- name: "AppUrls__ApiInternal"
  value: "{{ .Values.global.apiUrlInternal }}"
- name: "AppUrls__Admin"
  value: "{{ .Values.global.adminUrl }}"
- name: "AppUrls__AdminApi"
  value: "{{ .Values.global.adminApiUrl }}"
- name: "Redis__Configuration"
  value: "{{ .Values.global.redisConfiguration }}"
- name: "AuthServer__Authority"
  value: "{{ .Values.global.internalAuthServerAuthority }}"
- name: "AuthServer__RequireHttpsMetadata"
  value: "{{ .Values.global.internalAuthServerRequireHttpsMetadata }}"
- name: "StringEncryption__DefaultPassPhrase"
  value: "{{ .Values.global.stringEncryptionDefaultPassPhrase }}"
{{- end }}