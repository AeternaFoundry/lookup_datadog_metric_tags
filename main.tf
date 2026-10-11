data "datadog_metric_tags" "metric_tags_lookup" {
  for_each = var.metric_tags_lookup

  metric = each.value.metric
}

