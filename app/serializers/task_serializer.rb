class TaskSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :start, :due, :priority, :description
end
