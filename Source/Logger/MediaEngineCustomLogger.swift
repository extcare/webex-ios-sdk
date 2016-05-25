// Copyright 2016 Cisco Systems Inc
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import CocoaLumberjack
import Wme

class MediaEngineCustomLogger : CustomLogger {
    
    // May have some different log level setting on media engine
    let wmedefaultLevel = DDLogLevel.Info
    
    @objc func logVerbose(message: String!, file: String!, function: String!, line: UInt) {
        Logger.verbose(message, level: wmedefaultLevel, file: file, function: function, line: line)
    }
    
    @objc func logDebug(message: String!, file: String!, function: String!, line: UInt) {
        Logger.debug(message, level: wmedefaultLevel, file: file, function: function, line: line)
    }
    
    @objc func logInfo(message: String!, file: String!, function: String!, line: UInt) {
        Logger.info(message, level: wmedefaultLevel, file: file, function: function, line: line)
    }
    
    @objc func logWarn(message: String!, file: String!, function: String!, line: UInt) {
        Logger.warn(message, level: wmedefaultLevel, file: file, function: function, line: line)
    }
    
    @objc func logError(message: String!, file: String!, function: String!, line: UInt) {
        Logger.error(message, level: wmedefaultLevel, file: file, function: function, line: line)
    }
}
