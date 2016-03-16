require_dependency "stash_datacite/application_controller"

module StashDatacite
  class MetadataEntryPagesController < ApplicationController
    before_action :find_resource

    def find_or_create
      @metadata_entry = Resource::Metadata_Entry.new(@resource)
      respond_to do |format|
        format.js
      end
    end

    private
    def find_resource
      @resource = StashDatacite.resource_class.find(params[:resource_id].to_i) unless params[:resource_id].blank?
    end

  end
end
