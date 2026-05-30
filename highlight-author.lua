function Cite(el)
  return el
end

function Div(el)
  return el
end

function Para(el)
  for i, v in ipairs(el.content) do
    if v.t == "Str" then
      -- do nothing here
    end
  end
  return el
end

-- This is the key part: post-process text
function Str(el)
  if el.text == "Si, Y." then
    return pandoc.Strong(pandoc.Str("Si, Y."))
  else
    return el
  end
end
