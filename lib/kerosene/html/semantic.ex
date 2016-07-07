defmodule Kerosene.HTML.Semantic do
  use Phoenix.HTML

  def generate_links(page_list) do
    content_tag :nav, class: "ui pagination menu" do
      for {label, _page, url, current} <- page_list do
        link "#{label}", to: url, class: build_html_class(current)
      end
    end
  end

  defp build_html_class(true), do: "item active"
  defp build_html_class(_), do: "item"
end
