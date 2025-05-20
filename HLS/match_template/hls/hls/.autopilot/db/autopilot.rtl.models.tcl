set SynModuleInfo {
  {SRCNAME match_template MODELNAME match_template RTLNAME match_template IS_TOP 1
    SUBMODULES {
      {MODELNAME match_template_mul_32ns_34ns_55_5_1 RTLNAME match_template_mul_32ns_34ns_55_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME match_template_mul_9s_9s_18_2_1 RTLNAME match_template_mul_9s_9s_18_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME match_template_mac_muladd_9s_9s_18s_18_4_1 RTLNAME match_template_mac_muladd_9s_9s_18s_18_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME match_template_mac_muladd_9s_9s_18s_19_4_1 RTLNAME match_template_mac_muladd_9s_9s_18s_19_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME match_template_control_s_axi RTLNAME match_template_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME match_template_flow_control_loop_pipe RTLNAME match_template_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME match_template_flow_control_loop_pipe_U}
    }
  }
}
