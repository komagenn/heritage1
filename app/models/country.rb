class Country < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アルゼンチン共和国' },
    { id: 3, name: 'ウルグアイ東方共和国' },
    { id: 4, name: 'エクアドル共和国' },
    { id: 5, name: 'コロンビア共和国' },
    { id: 6, name: 'スリナム共和国' },
    { id: 7, name: 'チリ共和国' },
    { id: 8, name: 'パラグアイ共和国' },
    { id: 9, name: 'ブラジル連邦共和国' },
    { id: 10, name: 'ベネズエラ・ボリバル共和国' },
    { id: 11, name: 'ペルー共和国' },
    { id: 12, name: 'ボリビア多民族国' }
  ]
    include ActiveHash::Associations
    has_many :heritages
  end