# Brief Updates for Professor Presentation

## Addressing Your Methodology Comments

### 1. Introduction Improvements ✅
- **Added comprehensive first paragraph** on importance of autonomous journalist robots
  - Timeliness, safety, geographic constraints, resource limitations
  - Broader applications: industrial monitoring, environmental observation, public safety
- **Rewrote second paragraph** as concise problem statement
  - Separated importance from problem definition
  - Clear citations for capture/generation disconnect, human operator dependency

### 2. Methodology Clarity ✅
- **Restructured section headings** to match Figure 1 exactly:
  - "Detection, Perception, and Newsworthiness Assessment" (left block)
  - "Control and Decision Policy" (middle)
  - "Journalism Pipeline: Multimodal Data Processing" (right)
- **Added methodology overview** paragraph referencing Figure 1
- **Merged Implementation Details** into main methodology subsection

### 3. Figure 1 Improvements ✅
- **Replaced with two side-by-side flowcharts**:
  - Left: Perception + Newsworthiness loop (sensing → motion → triggers)
  - Right: Journalism pipeline (multimodal processing → synthesis → evaluation)
- **Clear closed-loop visualization** showing system integration
- **Concise caption** explaining both panels and 0.85 acceptance rule

### 4. Newsworthiness Assessment Justification ✅
- **Added threshold rationale**: τw=0.7, τc=0.8 based on validation sweep
- **Weight justification**: Documented sensitivity analysis (±0.1) showing stable outcomes
- **Trade-off explanations** for parameter selection

### 5. Prompt Engineering Details ✅
- **Added actual prompt example** from controller code in methodology
- **Clarified confidence calibration** affects motion scaling only, not acceptance
- **Structured output schema** clearly explained

### 6. Journalism Pipeline Quantification ✅
- **Added semantic selection table** showing:
  - 2500 total frames → 400-600 selected frames
  - Processing time: 122-136s (with selection) vs 272-294s (without)
- **Justified 10s pre-event context** based on pilot trade-off experiments
- **Added ablation note** comparing inverted pyramid vs. no-structure prompts

### 7. Evaluation Framework Clarity ✅
- **Added evaluation dimensions table** summarizing:
  - Metrics, purposes, and models used (CLIP, RoBERTa, LLaVA, etc.)
- **0.85 threshold rationale** based on score distributions and human agreement
- **Sensitivity analysis** showing ±0.05 preserves relative trends

### 8. Implementation Details Enhancement ✅
- **Added compute split**: AGX vs. remote GPU responsibilities
- **ROS 2 node organization**: newsworthiness loop, motion control, journalism/eval services
- **Latency figures**: 130-170 ms on Wi-Fi, pipeline dependency on selected frames

### 9. Navigation Evaluation Clarity ✅
- **Defined "decision"**: one executed control proposal from 2s newsworthiness window
- **Clarified procedure**: 70 decisions ≈ 140s closed-loop evaluation
- **Added evaluation design**: environments, approaches, metrics, procedure

## Key Results Now Clearly Presented
- **94% decision alignment** with human operator
- **89% behavioral divergence** when mission context changes  
- **+23.3% improvement** with multi-frame processing
- **+11.3% end-to-end improvement** over static baseline

## Technical Specifications Added
- **Hardware details**: Dual C2 cameras, ReSpeaker mic, AGX + Limo Pro
- **Model pipeline**: VideoLLaMA3 → LLaVA → DeepSeek-R1 → CLIP evaluation
- **Real-time operation**: Wi-Fi latency 130-170ms, frame selection optimization

## Final Status
- **8 pages** (within ICRA limits)
- **Camera-ready** with proper formatting
- **All reviewer concerns addressed** systematically
- **Professional presentation** suitable for conference submission
