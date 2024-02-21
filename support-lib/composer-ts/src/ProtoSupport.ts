/*
 * Copyright 2024 Snap, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { Arena } from 'composer_protobuf/src/Arena';
/* eslint @typescript-eslint/no-explicit-any: "off" */
/* eslint @typescript-eslint/no-unsafe-member-access: "off" */
/* eslint @typescript-eslint/no-unsafe-assignment: "off" */
/* eslint @typescript-eslint/naming-convention: "off" */

declare const global: any;

export function registerProtobufLib(name: string, protolib: any): void {
  if (!('protoSupport' in global)) {
    global.protoSupport = {
      Arena: Arena,
      protoLibs: {},
    };
  }
  global.protoSupport.protoLibs[name] = protolib;
}
