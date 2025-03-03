class WorkflowRunRequestActionFilterComponent < ApplicationComponent
  def initialize(token_id:, request_action: '')
    super

    @request_action = request_action
    @token_id = token_id
    @generic_event_type = 'pull_request'
    @filter_options = ['all'] + ScmWebhook::ALLOWED_PULL_REQUEST_ACTIONS + ScmWebhook::ALLOWED_MERGE_REQUEST_ACTIONS
  end
end
