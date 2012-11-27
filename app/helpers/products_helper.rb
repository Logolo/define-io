module ProductsHelper
  # def score_badge
  # Applies a badge to a given product's listing based on its
  # average score.
  def score_badge(score)
    case score
      when 0..4
        raw("<span class=\"badge badge-important\">#{score}</span>")
      when 4.1..6
        raw("<span class=\"badge\">#{score}</span>")
      when 6.1..7.9
        raw("<span class=\"badge badge-important\">#{score}</span>")
      when 8..8.9
        raw("<span class=\"badge badge-success\">#{score}</span>")
      else
        raw("<span class=\"badge badge-warning\">#{score}</span>")
    end
  end
end
