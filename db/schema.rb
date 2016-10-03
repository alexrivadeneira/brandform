# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160930224640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "models", force: :cascade do |t|
    t.string "name"
  end

  create_table "selections", force: :cascade do |t|
    t.string  "communityurl"
    t.string  "coloraccent1"
    t.string  "coloraccent2"
    t.string  "colorhighlight"
    t.boolean "herocarousel"
    t.string  "heroslide1headerline"
    t.string  "heroslide1textparagraph"
    t.string  "heroslide1bgurl"
    t.string  "heroslide1button1name"
    t.string  "heroslide1button1url"
    t.string  "heroslide1button2name"
    t.string  "heroslide1button2url"
    t.string  "heroslide2headerline"
    t.string  "heroslide2textparagraph"
    t.string  "heroslide2bgurl"
    t.string  "heroslide2button1name"
    t.string  "heroslide2button1url"
    t.string  "heroslide2button2name"
    t.string  "heroslide2button2url"
    t.string  "heroslide3headerline"
    t.string  "heroslide3textparagraph"
    t.string  "heroslide3bgurl"
    t.string  "heroslide3button1name"
    t.string  "heroslide3button1url"
    t.string  "heroslide3button2name"
    t.string  "heroslide3button2url"
    t.string  "welcomearea"
    t.string  "welcomeareatext"
    t.string  "activecampaigns"
    t.boolean "generaltext"
    t.string  "textheaderline"
    t.string  "textparagraph"
    t.boolean "pinnedideas"
    t.boolean "calloutideas"
    t.boolean "tags"
    t.boolean "video"
    t.string  "videourl"
    t.boolean "footer"
    t.string  "footercol1header"
    t.string  "footercol1item1title"
    t.string  "footercol1item1url"
    t.string  "footercol1item2title"
    t.string  "footercol1item2url"
    t.string  "footercol1item3title"
    t.string  "footercol1item3url"
    t.string  "footercol1item4title"
    t.string  "footercol1item4url"
    t.string  "footercol1item5title"
    t.string  "footercol1item5url"
    t.string  "footercol2header"
    t.string  "footercol2item1title"
    t.string  "footercol2item1url"
    t.string  "footercol2item2title"
    t.string  "footercol2item2url"
    t.string  "footercol2item3title"
    t.string  "footercol2item3url"
    t.string  "footercol2item4title"
    t.string  "footercol2item4url"
    t.string  "footercol2item5title"
    t.string  "footercol2item5url"
    t.string  "footercol3header"
    t.string  "footercol3item1title"
    t.string  "footercol3item1url"
    t.string  "footercol3item2title"
    t.string  "footercol3item2url"
    t.string  "footercol3item3title"
    t.string  "footercol3item3url"
    t.string  "footercol3item4title"
    t.string  "footercol3item4url"
    t.string  "footercol3item5title"
    t.string  "footercol3item5url"
    t.string  "footercol4header"
    t.string  "footercol4item1title"
    t.string  "footercol4item1url"
    t.string  "footercol4item2title"
    t.string  "footercol4item2url"
    t.string  "footercol4item3title"
    t.string  "footercol4item3url"
    t.string  "footercol4item4title"
    t.string  "footercol4item4url"
    t.string  "footercol4item5title"
    t.string  "footercol4item5url"
  end

end
