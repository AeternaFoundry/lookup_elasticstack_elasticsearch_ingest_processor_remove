variable "elasticsearch_ingest_processor_remove_lookup" {
  description = <<EOT
Map of elasticsearch_ingest_processor_remove_lookup, attributes below
Required:
    - field
Optional:
    - description
    - if
    - ignore_failure
    - ignore_missing
    - on_failure
    - tag
EOT

  type = map(object({
    field          = set(string)
    description    = optional(string)
    if             = optional(string)
    ignore_failure = optional(bool)
    ignore_missing = optional(bool)
    on_failure     = optional(list(string))
    tag            = optional(string)
  }))
}

