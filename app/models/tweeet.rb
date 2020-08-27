class Tweeet < ApplicationRecord
  validates :content, presence: { message: "文字を入力してください" }
  validates :content, length: {in: 1..140, message: "1~140文字以内で入力してください" }
end 
