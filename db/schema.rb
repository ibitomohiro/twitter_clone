ActiveRecord::Schema.define(version: 2020_08_25_124848) do
  enable_extension "plpgsql"
  create_table "tweeets", force: :cascade do |t|
    t.text "content"
  end
end
