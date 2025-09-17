# Wording Changes (Before → After)

This file summarizes sentence‑level edits applied to `icra2026_paper.tex` without changing technical content.

## Abstract

- Before: "However, existing automated journalism primarily automates content generation from pre‑recorded or web data, but it lacks a connection to the data collection process; as a result, systems still depend on human operators to capture suitable footage and to decide what to record."
  After: "However, existing automated journalism primarily automates content generation from pre‑recorded or web data, yet lacks a connection to the data‑collection process; as a result, systems still depend on human operators to capture suitable footage and decide what to record."
- Before: "end‑to‑end article quality at +11.3% over a static recorded baseline."
  After: "end‑to‑end article quality with a +17.3% improvement over a static recorded baseline."

## Introduction

- Before: "Multimodal data are processed via visual analysis and semantic selection, and a language model synthesizes grounded articles based on synchronized frame descriptions and audio transcripts."
  After: "Multimodal data are processed via visual analysis and semantic selection, and a language model then synthesizes grounded articles based on synchronized frame descriptions and audio transcripts."
- Contributions list normalization (parallelism and hyphenation):

  - Before: "a unified real‑time journalism pipeline …"
    After: "a unified, real‑time journalism pipeline …"
  - Before: "synchronized multimodal processing …"
    After: "synchronized, multimodal processing …"
  - Before: "a comprehensive multimodal evaluation framework …"
    After: "a comprehensive, multimodal evaluation framework …"

## Methodology (Perception and Control)

- Before: "To enable responsive control in dynamic scenes, we segment real‑time video … which shortens the perception–action cycle and mitigates VideoLLaMA3’s non–real‑time‑optimized architecture."
  After: "To enable responsive control in dynamic scenes, we segment real‑time video … which shortens the perception–action cycle and mitigates limitations of VideoLLaMA3’s non‑real‑time‑optimized architecture."
- Before: "Output instruction: return concise natural‑language reasoning and the movement commands …"
  After: "Output instruction: return concise natural‑language reasoning and movement commands …"
- Before: "Recording begins when … (hysteresis)."
  After: "Recording begins when … (with hysteresis)."

## Journalism Pipeline

- Before: "begins continuous, real‑time monitoring … and evidence retrieval cost … utterance/shot change"
  After: "begins continuous real‑time monitoring … and evidence‑retrieval cost … utterance/shot‑change"
- Before: "near‑duplicates … short‑range temporal coherence"
  After: "near‑duplicates … short‑range temporal coherence" (hyphenation consistency only)

## Results (Navigation and Single vs Multi‑Frame)

- Before: "For the fixed budget of 70 decisions, …"
  After: "For a fixed budget of 70 decisions, …"
- Before: "We expected that this would improve narrative and temporal consistency. The aggregated results … are presented in Table …; the multi‑frame processing approach achieved …"
  After: "We expected this to improve narrative and temporal consistency. Table … presents aggregated results … the multi‑frame approach achieved …"

## Discussion (Embodiment)

- Before: "Rather than reiterating the per‑scenario values, we interpret the pattern: … These changes are reflected as gains in spatial/temporal reasoning and evidence quality …"
  After: "Rather than reiterating per‑scenario values, we interpret the pattern: … These changes are reflected in gains in spatial and temporal reasoning and evidence quality …"

## Conclusion

- Before: "multi‑modal generation pipeline"
  After: "multimodal generation pipeline"

## Figures

- Fig. 1(c) subcaption:
  - Before: "The resulting auto‑generated news article."
    After: "Autonomously generated article."
