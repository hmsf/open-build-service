class BsRequestActionDescriptionComponentPreview < ViewComponent::Preview
  # Preview at http://HOST:PORT/rails/view_components/bs_request_action_description_component/submit_preview
  def submit_preview
    bs_request = BsRequest.joins(:bs_request_actions).where(bs_request_actions: { type: :submit }).last
    render(BsRequestActionDescriptionComponent.new(action: bs_request.webui_actions.last, creator: bs_request.creator))
  end
end
