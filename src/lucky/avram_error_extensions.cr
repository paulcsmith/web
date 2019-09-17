class Avram::InvalidOperationError
  include Lucky::RenderableError

  def renderable_status
    400
  end

  def renderable_message
    "Invalid params"
  end

  def renderable_details
    "#{invalid_attribute_name} #{validation_messages.first}"
  end

  private def invalid_attribute_name
    invalid_attribute[0].to_s
  end

  private def validation_messages
    invalid_attribute[1]
  end

  private def invalid_attribute
    errors.first
  end
end
