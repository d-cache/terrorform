resource "nsxt_policy_tier0_gateway" "t0hero" {
    default_rule_logging     = false
    display_name             = "t0hero"
    edge_cluster_path        = "/infra/sites/default/enforcement-points/default/edge-clusters/54dc44a0-8414-4678-88f4-e983e205ff19"
    enable_firewall          = true
    failover_mode            = "NON_PREEMPTIVE"
    force_whitelisting       = false
    ha_mode                  = "ACTIVE_ACTIVE"
    internal_transit_subnets = [
        "169.254.0.0/24",
    ]
    ipv6_dad_profile_path    = "/infra/ipv6-dad-profiles/default"
    ipv6_ndra_profile_path   = "/infra/ipv6-ndra-profiles/default"
    nsx_id                   = "t0hero"
    transit_subnets          = [
        "100.64.0.0/16",
    ]

    bgp_config {
        ecmp                               = true
        enabled                            = true
        graceful_restart_mode              = "HELPER_ONLY"
        graceful_restart_stale_route_timer = 600
        graceful_restart_timer             = 180
        inter_sr_ibgp                      = true
        local_as_num                       = "65000"
        multipath_relax                    = true
    }
}