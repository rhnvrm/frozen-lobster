---
title: "Daily lobste.rs News for {{ dateFormat "2006-01-02" .Date }}"
date: {{.Date}}
draft: false
---

{{ $data := getJSON "https://lobste.rs/hottest.json" }}

{{ range first 10 (sort $data "score" "desc") }}

- [{{ .title }}]({{ .url }})
  [(comments)]({{ .comments_url }})
  {{ end }}
