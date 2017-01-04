module Config
  class Swift < Base
    def content
      owner_config.deep_merge(super)
    end

    def serialize(data = content)
      Serializer.yaml(data)
    end

    private

    def parse(file_content)
      Parser.yaml(file_content)
    end
  end
end
