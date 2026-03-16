# The De-Slop Machine

A writing audit tool that detects AI-generated patterns and rewrites text with actual human voice.

**Live:** [clauding-lab.github.io/de-slop-machine](https://clauding-lab.github.io/de-slop-machine/)

## What it does

1. **Pattern scan** — Detects 16 categories of AI writing tells (significance inflation, promotional language, chatbot artifacts, emoji-bold lists, copula avoidance, sycophantic tone, etc.) based on Wikipedia's [Signs of AI Writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) taxonomy.

2. **Human Score** — Rates text 0-100 based on pattern density and severity.

3. **Claude-powered rewrite** — Sends the text + detected patterns to Claude Sonnet for a full rewrite with voice, rhythm, and personality (not just pattern removal).

4. **Anti-AI audit** — Runs a second Claude pass asking "what still reads AI-generated?" and fixes remaining tells.

5. **Diff view** — Side-by-side original vs. final rewrite.

## Built with

- Vanilla HTML/CSS/JS (single file, no build step)
- Anthropic Messages API (Claude Sonnet 4)
- JetBrains Mono + Newsreader fonts

## Pattern categories detected

| Category | Severity |
|---|---|
| Chatbot artifacts | High |
| Significance inflation | High |
| Promotional language | High |
| Emoji + bold lists | High |
| AI vocabulary words | Medium |
| Superficial -ing phrases | Medium |
| Vague attribution | Medium |
| Negative parallelism | Medium |
| Sycophantic tone | Medium |
| Generic positive endings | Medium |
| Despite-challenges formula | Medium |
| False ranges | Medium |
| Copula avoidance | Low |
| Em dash overuse | Low |
| Excessive hedging | Low |
| Hashtag decoration | Low |

## Credits

Pattern taxonomy based on [Wikipedia:Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing), maintained by WikiProject AI Cleanup.
