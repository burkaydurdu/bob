class Coffee < ApplicationRecord

  #
  # empty   [  ]
  #
  # enough  [/\]
  #         [--]
  #         [\/]
  #
  # brewing [/\]
  #         [--]
  #         [  ]
  #         [\/]
  #
  # ready   [/\]
  #         [--]
  #         [--]
  #         [\/]
  #
  enum status: { empty: 0, enough: 1, brewing: 2, ready: 3 }
end
