output "metric_tags_lookup_id" {
  description = "Map of id values across all metric_tags_lookup, keyed the same as var.metric_tags_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_metric_tags.metric_tags_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metric_tags_lookup_metric" {
  description = "Map of metric values across all metric_tags_lookup, keyed the same as var.metric_tags_lookup except keys with no metric are omitted"
  value       = { for k, v in data.datadog_metric_tags.metric_tags_lookup : k => v.metric if v.metric != null && length(v.metric) > 0 }
}
output "metric_tags_lookup_tags" {
  description = "Map of tags values across all metric_tags_lookup, keyed the same as var.metric_tags_lookup except keys with no tags are omitted"
  value       = { for k, v in data.datadog_metric_tags.metric_tags_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

