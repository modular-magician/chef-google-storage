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

module Google
  module Storage
    module Data
      # A class to manage data for condition for bucket.
      class BucketCondition
        include Comparable

        attr_reader :age_days
        attr_reader :created_before
        attr_reader :is_live
        attr_reader :matches_storage_class
        attr_reader :num_newer_versions

        def to_json(_arg = nil)
          {
            'age' => age_days,
            'createdBefore' => created_before,
            'isLive' => is_live,
            'matchesStorageClass' => matches_storage_class,
            'numNewerVersions' => num_newer_versions
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            age_days: age_days.to_s,
            created_before: created_before.to_s,
            is_live: is_live.to_s,
            matches_storage_class: matches_storage_class.to_s,
            num_newer_versions: num_newer_versions.to_s
          }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? BucketCondition
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? BucketCondition
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            result = compare[:self] <=> compare[:other]
            return result unless result.zero?
          end
          0
        end

        def inspect
          to_json
        end

        private

        def compare_fields(other)
          [
            { self: age_days, other: other.age_days },
            { self: created_before, other: other.created_before },
            { self: is_live, other: other.is_live },
            { self: matches_storage_class, other: other.matches_storage_class },
            { self: num_newer_versions, other: other.num_newer_versions }
          ]
        end
      end

      # Manages a BucketCondition nested object
      # Data is coming from the GCP API
      class BucketConditionApi < BucketCondition
        def initialize(args)
          @age_days = Google::Storage::Property::Integer.api_parse(args['age'])
          @created_before =
            Google::Storage::Property::Time.api_parse(args['createdBefore'])
          @is_live =
            Google::Storage::Property::Boolean.api_parse(args['isLive'])
          @matches_storage_class =
            Google::Storage::Property::StringArray.api_parse(
              args['matchesStorageClass']
            )
          @num_newer_versions = Google::Storage::Property::Integer.api_parse(
            args['numNewerVersions']
          )
        end
      end

      # Manages a BucketCondition nested object
      # Data is coming from the Chef catalog
      class BucketConditionCatalog < BucketCondition
        def initialize(args)
          @age_days =
            Google::Storage::Property::Integer.catalog_parse(args[:age_days])
          @created_before =
            Google::Storage::Property::Time.catalog_parse(args[:created_before])
          @is_live =
            Google::Storage::Property::Boolean.catalog_parse(args[:is_live])
          @matches_storage_class =
            Google::Storage::Property::StringArray.catalog_parse(
              args[:matches_storage_class]
            )
          @num_newer_versions =
            Google::Storage::Property::Integer.catalog_parse(
              args[:num_newer_versions]
            )
        end
      end
    end

    module Property
      # A class to manage input to condition for bucket.
      class BucketCondition
        def self.coerce
          lambda do |x|
            ::Google::Storage::Property::BucketCondition.catalog_parse(x)
          end
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return value if value.is_a? Data::BucketCondition
          Data::BucketConditionCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return value if value.is_a? Data::BucketCondition
          Data::BucketConditionApi.new(value)
        end
      end
    end
  end
end
