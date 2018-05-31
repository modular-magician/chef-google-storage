# Copyright 2018 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

require 'google/storage/network/base'

module Google
  module Storage
    module Network
      # A wrapper class for a PUT Request
      class Put < Google::Storage::Network::Base
        def initialize(link, cred, type, body)
          super(link, cred)
          @type = type
          @body = body
        end

        def transport(request)
          request.content_type = @type
          request.body = @body
          puts "network(#{request}: body(#{@body}))" \
            unless ENV['GOOGLE_HTTP_VERBOSE'].nil?
          super(request)
        end
      end
    end
  end
end
