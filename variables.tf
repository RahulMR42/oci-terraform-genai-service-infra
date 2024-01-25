
## Copyright © 2022, Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
/*Common Variables*/
variable "tenancy_ocid" {}
# variable "user_ocid" {}
# variable "private_key_path" {}
# variable "fingerprint" {}
variable "compartment_id" {}
variable "region" {}
variable "name_prefix" {
  default = "OCIGenAIService"
  description = "A prefix for resources names"
}

variable "release" {
  description = "Reference Architecture Release (OCI Architecture Center)"
  default     = "0.0.0"
}

/*Tag variable*/
variable "defined_tags" {
  default = {}
  description = "OCI Defined tags"
}
variable "freeform_tags" {
  default = {}
  description = "OCI Freeform tags"
}


/*Dedicated AI Cluster (DAC) variables for hosting*/
 variable "create_dac_for_hosting" {
   default = true
   description = "Set false to not to create a DAC for hosting"
 }



variable "dedicated_ai_cluster_unit_count_for_hosting" {
  default = 1
  description = "number of dedicated units in AI cluster for hosting"
}
variable "dedicated_ai_cluster_unit_shape_for_hosting" {
  default = "LARGE_COHERE"
  description = "The shape of dedicated unit in this AI cluster"
}

/*Dedicated AI Cluster(DAC) variables for Tuning*/

variable "create_dac_for_tuning" {
  default = true
  description = "set false to not to create a DAC for fine tuning"
}
variable "dedicated_ai_cluster_unit_count_for_tuning" {
  default = 2
  description = "number of dedicated units in AI cluster for tuning"
}
variable "dedicated_ai_cluster_unit_shape_for_tuning" {
  default = "SMALL_COHERE"
  description = "The shape of dedicated unit in this AI cluster"
}