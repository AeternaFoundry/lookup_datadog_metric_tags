variable "metric_tags_lookup" {
  description = <<EOT
Map of metric_tags_lookup, attributes below
Required:
    - metric
EOT

  type = map(object({
    metric = string
  }))
}

