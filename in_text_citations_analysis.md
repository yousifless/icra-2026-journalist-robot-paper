# In-Text Citations Analysis for ICRA 2026 Paper

## IEEE Citation Standards
- **Every mention of a source requires citation** - not just the first time
- **Same source = same citation number** throughout the paper
- **Place citations inside punctuation** when at end of sentence
- **Cite each time you reference work, ideas, or findings** from that source

## Current Citation Status Analysis

### ✅ PROPERLY CITED (Following IEEE Standards)

**Line 100:** `\cite{pew2021newsroom}` - First mention, properly cited

**Line 102:** `\cite{graefe2016guide}` - First mention, properly cited

**Line 102:** `\cite{diakopoulos2019automating,reuters_tracer2017}` - First mentions, properly cited

**Line 102:** `\cite{mast2020,mhms2022}` - First mentions, properly cited

**Line 152:** `\cite{diakopoulos2019automating,graefe2016guide,montana2020automating}` - Properly cited

**Line 152:** `\cite{reuters_tracer2017,xiaomingbot2020,blab_reporter2022}` - Properly cited

**Line 154:** `\cite{video_summarization_2024}` - First mention, properly cited

**Line 154:** `\cite{mhms2022}` - Second mention, properly cited

**Line 154:** `\cite{selfcheckgpt2023,factscore2023}` - First mentions, properly cited

**Line 154:** `\cite{qafacteval2021,laban2020summeval}` - First mentions, properly cited

**Line 158:** `\cite{newsgpt2023}` - First mention, properly cited

**Line 158:** `\cite{adversarial_data_collection_2025,sharedassembly_2025,robots_diary_studies_2025}` - First mentions, properly cited

**Line 161:** `\cite{duet2022}` - First mention, properly cited

**Line 161:** `\cite{saycan2022}` - First mention, properly cited

**Line 161:** `\cite{brohan2022rt}` - First mention, properly cited

**Line 170:** `\cite{diakopoulos2019automating,graefe2016guide,reuters_tracer2017,xiaomingbot2020,blab_reporter2022}` - Repeated citations, properly cited

**Line 170:** `\cite{adversarial_data_collection_2025,sharedassembly_2025,robots_diary_studies_2025}` - Repeated citations, properly cited

**Line 170:** `\cite{mast2020,mhms2022,video_summarization_2024}` - Repeated citations, properly cited

**Line 170:** `\cite{embodied_survey_2024,duet2022,saycan2022}` - Repeated citations, properly cited

**Line 178:** `\cite{radford2021clip}` - First mention, properly cited

**Line 178:** `\cite{alayrac2022flamingo}` - First mention, properly cited

**Line 178:** `\cite{li2024llava}` - First mention, properly cited

**Line 178:** `\cite{videollama3_2025}` - First mention, properly cited

**Line 178:** `\cite{blip22023}` - First mention, properly cited

**Line 183:** `\cite{videollama3_2025}` - Second mention, properly cited

**Line 184:** `\cite{videollama3_2025}` - Third mention, properly cited

**Line 195:** `\cite{radford2021clip}` - Second mention, properly cited

**Line 195:** `\cite{video_summarization_2024}` - Second mention, properly cited

**Line 193:** `\cite{liu2023llava, li2024llava}` - First mentions, properly cited

**Line 216:** `\cite{li2024llava}` - Second mention, properly cited

**Line 216:** `\cite{whisper2022}` - First mention, properly cited

**Line 221:** `\cite{herrero2024circular}` - First mention, properly cited

**Line 247:** `\cite{reimers2019sentencebert}` - First mention, properly cited

**Line 247:** `\cite{liu2019roberta}` - First mention, properly cited

**Line 273:** `\cite{llama3_2024}` - First mention, properly cited

**Line 273:** `\cite{liu2023llava,li2024llava}` - Repeated citations, properly cited

### ❌ MISSING CITATIONS (Need to be Added)

**Line 100:** "Such systems therefore help alleviate newsroom resource shortages" - Should cite `\cite{pew2021newsroom}` again when referring to the same study

**Line 102:** "Many frameworks rely on pre-recorded or web-based datasets" - Should cite `\cite{diakopoulos2019automating,reuters_tracer2017}` again

**Line 102:** "This separation prevents real-time adaptation" - Should cite `\cite{graefe2016guide}` again

**Line 102:** "multi-modal pipelines often struggle to fuse audio and video coherently" - Should cite `\cite{mast2020,mhms2022}` again

**Line 152:** "Foundational works convert structured data into narrative content" - Should cite `\cite{diakopoulos2019automating,graefe2016guide,montana2020automating}` again

**Line 152:** "Modern implementations process various data sources" - Should cite `\cite{reuters_tracer2017,xiaomingbot2020,blab_reporter2022}` again

**Line 152:** "reliance on pre-structured sources leaves a disconnect from live collection" - Should cite `\cite{diakopoulos2019automating,graefe2016guide}` again

**Line 154:** "Core approaches include extractive selection of key segments/frames" - Should cite `\cite{video_summarization_2024}` again

**Line 154:** "Recent multi-modal models have advanced visual-language understanding" - Should cite `\cite{li2024llava,videollama3_2025,blip22023}`

**Line 154:** "While cross-domain alignment methods enable better integration" - Should cite `\cite{mhms2022}` again

**Line 154:** "end-to-end systems that simultaneously process audio, visual, and textual modalities" - Should cite `\cite{li2024llava,videollama3_2025}`

**Line 154:** "Evaluation frameworks for automated journalism have evolved" - Should cite `\cite{selfcheckgpt2023,factscore2023,qafacteval2021,laban2020summeval}` again

**Line 158:** "Traditional journalism relies on human crews" - Should cite `\cite{pew2021newsroom}` again

**Line 158:** "recent robotics introduce mobile and telepresence systems" - Should cite `\cite{adversarial_data_collection_2025,sharedassembly_2025,robots_diary_studies_2025}` again

**Line 158:** "Examples include social robots integrated with LLMs" - Should cite `\cite{newsgpt2023}` again

**Line 158:** "most systems remain teleoperated" - Should cite `\cite{adversarial_data_collection_2025,sharedassembly_2025,robots_diary_studies_2025}` again

**Line 161:** "Vision-language navigation has progressed" - Should cite `\cite{duet2022}` again

**Line 161:** "language-grounded control grounds high-level semantics" - Should cite `\cite{saycan2022}` again

**Line 161:** "Robotics transformers have demonstrated the potential" - Should cite `\cite{brohan2022rt}` again

**Line 178:** "Foundation vision-language models (VLMs) such as CLIP" - Should cite `\cite{radford2021clip}` again

**Line 178:** "Flamingo" - Should cite `\cite{alayrac2022flamingo}` again

**Line 178:** "LLaVA-NeXT-Interleave" - Should cite `\cite{li2024llava}` again

**Line 178:** "VideoLLaMA3" - Should cite `\cite{videollama3_2025}` again

**Line 178:** "BLIP-2" - Should cite `\cite{blip22023}` again

**Line 183:** "VideoLLaMA3 processes this combined input" - Should cite `\cite{videollama3_2025}` again

**Line 184:** "VideoLLaMA3's non-real-time-optimized architecture" - Should cite `\cite{videollama3_2025}` again

**Line 195:** "semantic selection using CLIP (ViT-B/32)" - Should cite `\cite{radford2021clip}` again

**Line 195:** "consistent with extractive/abstractive video summarization practice" - Should cite `\cite{video_summarization_2024}` again

**Line 193:** "a vision-language model (LLaVA)" - Should cite `\cite{liu2023llava,li2024llava}` again

**Line 216:** "a multi-modal VLM (LLaVA-NeXT-Interleave)" - Should cite `\cite{li2024llava}` again

**Line 216:** "automatic speech recognition (Whisper)" - Should cite `\cite{whisper2022}` again

**Line 221:** "a reasoning-augmented language model (DeepSeek-R1)" - Should cite `\cite{deepseek_r1}`

**Line 221:** "inverted-pyramid structure" - Should cite `\cite{herrero2024circular}` again

**Line 247:** "Article sentences are embedded with Sentence-BERT" - Should cite `\cite{reimers2019sentencebert}` again

**Line 247:** "keyframes and batch descriptions are scored for semantic/visual/temporal agreement via LLaVA-NeXT-Interleave" - Should cite `\cite{li2024llava}` again

**Line 247:** "claim-evidence pairs are tested with RoBERTa-MNLI" - Should cite `\cite{liu2019roberta}` again

**Line 247:** "CLIP provides sentence-frame relevance" - Should cite `\cite{radford2021clip}` again

**Line 273:** "single-frame generator (Llama 3.2)" - Should cite `\cite{llama3_2024}` again

**Line 273:** "LLaVA-based formulation" - Should cite `\cite{liu2023llava,li2024llava}` again

**Line 337:** "single-frame baseline (Llama 3.2)" - Should cite `\cite{llama3_2024}` again

**Line 337:** "multi-frame model (LLaVA-Interleave)" - Should cite `\cite{li2024llava}` again

**Line 424:** "single-frame model (Llama 3.2)" - Should cite `\cite{llama3_2024}` again

**Line 426:** "multi-frame LLaVA-based model" - Should cite `\cite{li2024llava}` again

## Summary

**Total Current Citations:** 47 properly placed citations
**Missing Citations Needed:** 35+ additional citations for repeated mentions

**Key Issues:**
1. Many repeated mentions of the same sources lack citations
2. Some technical terms and model names mentioned without citations
3. Several conceptual references to prior work lack proper attribution

**Recommendation:** Add citations for every repeated mention of sources, technical terms, and model names to ensure full IEEE compliance and proper academic attribution.
