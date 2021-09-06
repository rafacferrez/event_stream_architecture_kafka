/**
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package org.apache.pinot.connector.spark.connector.query

import org.apache.pinot.spi.config.table.TableType

private[pinot] case class GeneratedSQLs(
    rawTableName: String,
    tableType: Option[TableType],
    offlineSelectQuery: String,
    realtimeSelectQuery: String) {

  def isTableOffline: Boolean = tableType.contains(TableType.OFFLINE)

  def isTableRealtime: Boolean = tableType.contains(TableType.REALTIME)

}
