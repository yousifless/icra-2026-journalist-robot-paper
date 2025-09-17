# ICRA 2026 Paper: Changes and Updates Summary

## Paper Title
"Journalist Robot: Real-Time Autonomous News Production Robot Through Newsworthiness based Navigation and Synchronized Multimodal Processing"

## Major Changes and Improvements

### 1. Introduction Section
- **Added new first paragraph** on the importance and scope of autonomous journalist robots
  - Emphasized timeliness, access under constraints, broader applications
  - Connected to media, information access, and public safety
- **Rewrote second paragraph** into a concise problem statement
  - Separated importance from problem definition
  - Cited specific causes: capture/generation disconnect, reliance on pre-recorded data, weak audio-video grounding

### 2. Methodology Section
- **Restructured section headings** to align with Figure 1:
  - "Detection, Perception, and Newsworthiness Assessment" (left block)
  - "Control and Decision Policy" (formerly "Newsworthiness and control")
  - "Journalism Pipeline: Multimodal Data Processing and Content Generation" (middle)
  - "Evaluation and Acceptance" (right)
- **Added methodology overview paragraph** referencing Figure 1
- **Merged Implementation Details** into main methodology subsection
- **Added prompt example box** with actual controller prompt from code
- **Added ablation note** comparing inverted pyramid vs. no-structure prompts
- **Enhanced newsworthiness equations** with clearer explanations and thresholds (τw=0.7, τc=0.8)

### 3. Figures and Visual Elements
- **Replaced Figure 1** with two side-by-side flowcharts:
  - Left: Perception-action loop
  - Right: Journalist pipeline
  - Concise caption explaining both panels and 0.85 acceptance rule
- **Improved Figure 2 caption** for hardware setup (concise, informative)
- **Added Figure 3** showing behavioral divergence examples

### 4. Tables and Data Presentation
- **Table I**: Updated with experiment names instead of generic "Run A/B/C"
- **Table II**: Shortened labels and adjusted column widths for better fit
- **Table III**: Navigation comparison with 70 decisions ≈ 140s procedure
- **Table IV**: Behavioral divergence analysis
- **Table V**: Single-frame vs. Multi-frame processing comparison
- **Table VI**: End-to-end system evaluation with both static and autonomous results
- **Added semantic selection table** showing processing time improvements
- **Added evaluation dimensions table** summarizing metrics and models

### 5. Results Section
- **Clarified evaluation design** for newsworthiness navigation
- **Defined "decision"** as one executed control proposal from 2s newsworthiness window
- **Merged single-line paragraphs** into preceding text for better flow
- **Updated all table references** to match reordered numbering
- **Added specific performance gains**: +55.2% temporal consistency, +35.4% spatial reasoning, +23.3% overall

### 6. Discussion Section
- **Expanded embodiment discussion** grounded in Table VI data
- **Removed repetitive content** and focused on interpretation
- **Added per-scenario improvements** with specific numbers
- **Explained metric patterns** and why static runs need revisions while autonomous typically don't
- **Neutralized extreme language** ("Crucially", "significant", "merely")

### 7. Conclusion Section
- **Expanded to include more details** while maintaining one paragraph structure
- **Added specific metrics**: 94% alignment, +23.3% multi-frame gain, +11.3% end-to-end improvement
- **Named pipeline elements**: dual-camera + ASR, CLIP selection, LLaVA descriptions, DeepSeek-R1 generation, 0.85 evaluator
- **Outlined future work**: outdoor robustness, adaptive newsworthiness, multi-robot coordination
- **Professional tone** without overconfident language

### 8. Technical Improvements
- **Added compute split details**: AGX vs. remote GPU responsibilities
- **ROS 2 node organization**: newsworthiness loop, motion control, journalism/eval services
- **Latency figures**: 130-170 ms on Wi-Fi (removed LAN references)
- **Threshold rationale**: Added sensitivity analysis for τw, τc values
- **Weight justification**: Documented validation sweep for newsworthiness weights

### 9. Content Quality Enhancements
- **Removed redundant information** throughout the paper
- **Fixed table/figure alignment** and references
- **Ensured consistent terminology** across all sections
- **Verified claims match data** in tables
- **Professional, neutral tone** throughout
- **Camera-ready formatting** with proper LaTeX structure

### 10. Structural Improvements
- **Removed Appendix section** and integrated prompt example into methodology
- **Removed Acknowledgment section** per request
- **Streamlined evaluation algorithms** description
- **Consolidated related work** examples
- **Optimized page layout** to maintain 8-page limit

## Key Metrics and Results Highlighted
- **94% decision alignment** with human operator
- **89% behavioral divergence** when mission context changes
- **+23.3% overall improvement** with multi-frame processing
- **+11.3% end-to-end improvement** over static baseline
- **0.85 acceptance threshold** for article quality
- **70 decisions ≈ 140s** evaluation procedure

## Technical Specifications Added
- **Dual C2 cameras** with 360° coverage
- **ReSpeaker mic array** for audio capture
- **AGX + Limo Pro** hardware integration
- **VideoLLaMA3** for newsworthiness assessment
- **LLaVA** for multimodal processing
- **DeepSeek-R1** for article generation
- **CLIP** for semantic selection
- **Whisper** for audio transcription

## Final Status
- **8 pages** (within ICRA limits)
- **Camera-ready PDF** with proper formatting
- **All references resolved** and consistent
- **Professional presentation** suitable for conference submission
- **Comprehensive evaluation** across multiple dimensions
- **Clear contribution** to autonomous journalism field
