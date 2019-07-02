# 色設定メソッドの定義
def Pry.set_color sym, color
  CodeRay::Encoders::Terminal::TOKEN_COLORS[sym] = color.to_s
  { sym => color.to_s }
end

# 色設定の変更
Pry.set_color :integer, "\e[1;92m"
CodeRay::Encoders::Terminal::TOKEN_COLORS[:string][:self] = "\e[97m"

# Pry.config.color = true
#
# Pry.config.prompt = proc do |obj, nest_level, _pry_|
# version = ''
# version << "Rails#{Rails.version}" if defined? Rails
# version << "\001\e[0;92m\002"
# version << "#{RUBY_VERSION}"
# version << "\001\e[0m\002"
#
# "#{version} #{Pry.config.prompt_name}(#{Pry.view_clip(obj)})> "
# end
