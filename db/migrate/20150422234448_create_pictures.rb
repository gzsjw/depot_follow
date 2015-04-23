class CreatePictures < ActiveRecord::Migration
# 如果在保存图片时，出现ActiveRecord::StatementInvalid (Mysql2::Error: Incorrect string value)的错误，
# 可能是字符编码的问题，需要修改数据库及表的字符编码：
# ALTER DATABASE depot2_dev DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
# ALTER TABLE  products DEFAULT CHARACTER SET utf8;
# ALTER TABLE   products CONVERT TO CHARACTER SET utf8;
# ALTER TABLE  carts DEFAULT CHARACTER SET utf8;
# ALTER TABLE   carts CONVERT TO CHARACTER SET utf8;
# ALTER TABLE  line_items DEFAULT CHARACTER SET utf8;
# ALTER TABLE   line_items CONVERT TO CHARACTER SET utf8;
# ALTER TABLE  orders DEFAULT CHARACTER SET utf8;
# ALTER TABLE   orders CONVERT TO CHARACTER SET utf8;
# ALTER TABLE  users DEFAULT CHARACTER SET utf8;
# ALTER TABLE   users CONVERT TO CHARACTER SET utf8;
# ALTER TABLE  pictures DEFAULT CHARACTER SET utf8;
# ALTER TABLE   pictures CONVERT TO CHARACTER SET utf8;
  def change
    create_table :pictures do |t|
      t.string :comment
      t.string :name
      t.string :content_type
      t.binary :data, :limit => 1.megabyte

      t.timestamps
    end
  end
end
