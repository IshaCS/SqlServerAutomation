/*
 * Copyright © 2019 Cask Data, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package co.cask.db.batch.config;

import co.cask.cdap.api.annotation.Description;
import co.cask.cdap.api.annotation.Name;
import co.cask.db.batch.action.QueryActionConfig;

/**
 * Base config class for every database specific postaction plugin.
 */
public abstract class DBSpecificQueryActionConfig extends QueryActionConfig {
  @Name(HOST)
  @Description("Database host")
  public String host;

  @Name(PORT)
  @Description("Specific database port")
  public Integer port;

  @Name(DATABASE)
  @Description("Database name to connect to")
  public String database;

}
