# frozen_string_literal: true

# Repository for shared query string params
class QueryParamsRepo
  attr_reader :repo

  def initialize
    @repo = {}
  end

  def process(name, info)
    raise "#{name} has already been used" if repo.include name && repo[name] != info

    repo[name] = info
    reference name
  end

  def reference(name)
    "Params/TBD/#{name}"
  end
end