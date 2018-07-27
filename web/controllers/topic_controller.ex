defmodule Discuss.TopicController do
    use Discuss.Web, :controller
    def new(conn, _params) do
        struct = %Discuss.Topic{}
        params = %{}
        changeset = Discuss.Topic.changeset(struct, params)
        render conn, "new.html", changeset: changeset
    end

    def create(conn, params) do
        %{"topic" => topic} = params
    end
end