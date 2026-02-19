Assignment 2 - Qualitative methods and data quality  
Feb 16 - March 2, 2026

---

# Part I: A real-world study of the say-do gap in modelling

[NB!] This part will take you at least 3 days, due to the necessary waiting time between the interview and observation phases, so don’t wait :) You can do part II in the meantime.

A say-do gap is the difference between how people say they do things (work-as-imagined) and how they actually do them (work-as-done). This also extends to how things are recorded in systems (work-as-recorded) and how they are actually performed. This gap can lead to misunderstandings, inefficiencies, and errors. One of the methods to reconcile these differences is through direct observation and comparison of stated routines versus observed behaviors.

## Task selection

In this assignment, you will conduct a small-scale study to explore the say-do gap in a routine activity. You may come up with your own routine to study or use one of the following examples. The important thing is that the routine should concern a common, everyday activity that experiences some variation that you are performing regularly and is safe and non-sensitive. Examples include:

- Morning routine (e.g., getting ready for work/school)
- Preparing a meal
- Household chores (e.g., cleaning)
- Shopping for groceries

## Study setup

You will conduct the study in groups. However, if you prefer, you may also conduct the study individually.

The study will start with an interview of your chosen study participant (a group member, flatmate, family member, etc.). The main goal of the interview is to gather information about how the participant believes they perform the routine. You should ask open-ended questions to encourage detailed responses, focusing on the activities and their order. Try to understand the activity as good as you can. Try to avoid leading questions that may bias the participant’s responses. This interview should be audiorecorded (with permission), as it will be used later. In case you work individually, you will need to record yourself explaining the routine in detail.

Based on the interview, you should describe the routine and identify the activities, their order, and participants involved Deliverable 1. You can also use the DCR graph editor (dcrgraphs.net) or BPM modelling tool to create a visual representation of the routine, but this is not necessary. What matters is being able to communicate the routine to other people.

[NB!] You should wait at least a day before proceeding to the observation phase to minimise recall bias!

In the second part of the study, you will observe the participant performing the routine. If possible videorecord the observation and take detailed notes on what the participant does, what tools they use, who they interact with, including any deviations from what they described in the interview. If you are working individually, you will need to record yourself performing the routine. After the observation is complete, you should transcribe your notes and any relevant parts of the recording. You will use these to create an event log that comprised the observed routine Deliverable 2. The event log should be a .csv file and include timestamps, event labels, and any relevant context or notes about the activities performed.

Finally, you compare you Deliverable 1 and 2 and the event log to identify differences between the stated and observed routines. You should create a delta sheet that summarises these differences Deliverable 3, categorising them into types such as:

- missing events
- extra events
- different order
- timing distortions
- workarounds/coordination steps
- relabeling/ambiguity

## Reflections on the modelling process Deliverable 4

The observation study showed us differences between how people say they do things and how they actually do them. This has consequences for how we understand reality and build systems to support it. Drawing on Chapter 27, reflect on your study as an exercise in model construction and discovery. Consider, Interview-based DCR → knowledge-as-stated, Observed DCR → knowledge-as-discovered.

1. What kinds of data was missed or misrepresented in the interview-based model and why?
2. What counts as an activity in each model, and how did this differ?
3. How did the event log constrain what could be modelled?
4. Do you think that the event log could be captured automatically by a system? Why or why not?
5. How did the observation help uncover variations or exceptions that were not mentioned in the interview?
6. Why is it relevant to consider qualitative methods of discovery (e.g., observations) when building process models?

---

# Part II: Radiology case study — data quality, conformance, and the limits of logs

You are given synthetic radiology logs (radiology_event_log.csv) that contain intentional errors and omissions representing realistic data quality issues. Your task is to assess data quality through the Five Facets Framework (Data, Source, System, Task, Human), select and run appropriate assessment methods, and reflect on the limitations of event logs for capturing real-world healthcare workflows.

## Setup

To access the code you will need to have a GitHub account: https://github.com. Once you log in, you can access the code: https://classroom.github.com/a/f5dX9UbC and accept the assignment.

One of your group members should recreate your abasalon group within GitHub Classroom, which should be joined by other members. Next you can either: (1) Work online within the prepared GitHub Classroom’s Codespace environment or (2) clone the repository to your local machine and work there. If you choose option (2), make sure you have Python 3.12.1+ installed along with pandas and numpy. If you decide to work in Codespaces (1), all dependencies are pre-installed, just wait a little for the environment to initialise (it may take a few minutes).

The repository contains a Jupyter notebook (assignment.ipynb) where you will complete the tasks. If you are unfamiliar with Jupyter notebooks, it is a tool that allows you to create and share documents that contain live code (in our case Python), and narrative text. You can run code cells interactively and see the output directly below the cell.

All your development work should take place within the 2025-2026/assignment2/code/assignment.ipynb file.

On the first opening of the notebook, Visual Studio Code may ask you to install a Python extension. Accept this. On the run of the first cell, you may be prompted to select a Python interpreter. Install the suggested one, then select a Kernel > Select Python Environments and then Python 3.12.1 (global).

Follow the instructions in the notebook to complete the tasks.

## The notebook structure

The notebook is organised into seven parts:

Part 0: Introduces three research questions (RQs) that contextualise your data quality assessment:

- RQ1: Workflow efficiency and bottlenecks (turnaround time analysis)
- RQ2: Critical finding communication timelines (patient safety)
- RQ3: AI-based triage system development (data for machine learning)

Part 1: Data loading and initial exploration. You will write code to examine data types, distributions, missing values, and temporal coverage.

Part 2: The DQ assessment toolkit. You are provided with 11 pre-implemented assessment methods covering various DQ dimensions (completeness, accuracy, consistency, representativity, timeliness). Each method is documented.

Part 3: Method selection and justification. You must choose 4-5 methods from the toolkit to run, justifying your selection based on the RQs and expected DQ issues.

Part 4: Running your chosen methods. Execute each selected method and display results.

Part 5: Propose your own DQ dimension. Manually explore the data to identify a quality concern not adequately covered by existing methods. Define a new dimension, map it to the facets, and implement a demonstration function.

Part 6: Per-Facet Data Quality Synthesis. Assess the quality of the dataset along each of the five facets, drawing on results from your methods and your own interpretation.

Part 7: Invisible work analysis. Compare the event log to the workflow diagram to identify activities that do not appear in the log and analyse why.

## Important notes

- Focus is on method selection, justification, and interpretation rather than perfect coding
- All numbered “Reflection Questions” must be answered in your main report (Deliverable 6), not in the notebook
- There is no single “correct” set of methods. Your justification matters

## Part II reflections Deliverable 6

Answer the six numbered Reflection Questions below. Include relevant results, tables, and figures from your notebook to support your answers. For Question 5, include the code for your custom DQ assessment method.

1. Initial exploration. What kind of data is logged in the file? Assuming data quality is good, how can the data be used to answer the RQs?
2. Method selection justification. Include your completed method selection table from Part 3. Additionally, answer, why did you NOT choose the other methods? What trade-offs did you consider? How did the three research questions (RQs) influence your method selection?
3. Results interpretation. Provide detailed interpretation of results from each chosen method:
   - Include key results.
   - Describe and interpret the results. Did they work as expected? Did they reveal any surprising insights? Could they be improved?
   - Were your expectations correct?
   - Which facet(s) does this result primarily inform about?
4. Your proposed DQ dimension. Define your dimension (from Part 5), include the code for your custom assessment method and explain:
   - What specific pattern or issue in the data motivated this dimension? Reference your exploration code above. Provide concrete examples.
   - Which research question(s) would be affected by this quality issue? How?
   - Include your facet mapping table
5. Per-Facet Data Quality Synthesis. For each of the five data quality facets, interpret the results you got when running selected methods and assess the quality of the dataset. You can use these questions as guidance:
   - What did your methods reveal about data quality at a facet level?
   - What are the main data quality issues?
   - What could be the consequences in regard to the RQs?

Then discuss:
   - Which facet was most challenging to assess with the available methods? Why?
   - How else could these data quality facets be assessed?
6. Invisible work and system design implications. Using your invisible work analysis (Part 7) and the workflow diagram (Figure 1), address the following:
   - Include your completed table identifying at least three activities from the diagram that do not appear in the event log
   - For each activity, explain why it might not be logged (technical, social, economic reasons)
   - Reflect on how a process model built only from the event log would fail to capture these activities. What are the potential consequences for system design, in regard to each of the research questions?
   - How does your Part I experience (interview vs. observation) parallel the gap between event log and workflow diagram?
   - What does the gap between logged data and actual practice tell us about building healthcare IT systems from “data-driven” approaches alone?
   - Propose one concrete change to the logging system that would capture currently invisible work. Draw on concepts from Chapter 9 (Formal and informal information systems) to discuss trade-offs: Why is complete logging difficult or even unwelcome in real-world settings? How could negative impacts be mitigated?

---

## Deliverables summary

The submission should include Deliverable 5 The completed Jupyter notebook assignment.ipynb and a report in a pdf file (max 10 pages) that comprises the following deliverables:

Deliverable 1 A description of the routine based on the interview.
Deliverable 2 Event log representing the observed routine
Deliverable 3 Delta sheet summarising the differences between the two processes
Deliverable 4 Part I reflections
Deliverable 6 A combined PDF report containing:

---

## Background: The workflow diagram

The attached workflow diagram (Figure 1) shows the actual radiology workflow as observed in practice. Notice the many interactions: consultations between radiologists, communication with ordering clinicians, informal coordination.

(Figure 1 is located in Figur1-assignement2.jpg)
