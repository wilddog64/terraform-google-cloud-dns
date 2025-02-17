/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module "dns-public-zone" {
  source       = "../.."
  project_id   = "${var.project_id}"
  zone_type    = "public"
  name         = "${var.zone_name}"
  domain       = "${var.domain}"
  record_names = ["localhost"]

  record_data = [
    {
      rrdatas = "127.0.0.1"
      type    = "A"
    },
  ]
}
