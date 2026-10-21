# Interpretive Atlas

**An interactive workspace for collaborative qualitative research analysis.**

Interpretive Atlas is a web-based application designed to support the process of organizing qualitative codes, developing analytical categories and emerging themes, and documenting research decisions.

The application was developed as part of a doctoral qualitative research project at the University of Florida College of Education. It provides a shared workspace for researchers to explore coded interview data, compare patterns across participants, and collaboratively refine their interpretations.

Rather than automating qualitative analysis, Interpretive Atlas is intended to make the analytical process more organized, transparent, and accessible.

## Why I Built It

Interpretive Atlas began as a practical solution to a challenge in our qualitative research process.

My research partner and I conducted four semi-structured interviews examining how undergraduate students experience and navigate institutional email communication. After independently completing our first cycle of in vivo coding, we needed a way to compare our work, organize codes into provisional categories, and begin identifying patterns across interviews.

I wanted something more interactive than a spreadsheet that would allow us to explore relationships in the data while preserving the original participant language and documenting how our interpretations evolved.

Interpretive Atlas grew out of that need.

## Features

### Code Explorer
- Search and filter coded interview data.
- Review original in vivo codes, definitions, and supporting excerpts.
- Compare codes across interviews and research questions.
- Assign individual codes to multiple analytical categories.

### Category Codebook
- Create and refine provisional analytical categories.
- Establish shared category definitions and application rules.
- Document inclusion and exclusion criteria.
- Reference examples to support consistent categorization.

### Interactive Visualizations
- Explore code and category distributions.
- Compare patterns across interviews.
- Examine research question alignment.
- Identify potential relationships and areas for further analysis.

### Collaborative Analysis
- Access a shared research workspace.
- Flag ambiguous codes for discussion.
- Document analytical questions and resolutions.
- Record interpretive decisions through memos and a decision trail.

### Public Research Dashboard
- Share a live, read-only view of the analysis.
- Allow instructors and collaborators to explore visualizations and supporting evidence.
- Reflect updates as researchers save changes to the shared workspace.

## Research Approach

The initial implementation of Interpretive Atlas supports a qualitative analysis process informed by first-cycle in vivo coding.

The general workflow includes:

1. Independently code interview transcripts.
2. Compare and review initial codes.
3. Develop provisional analytical categories.
4. Establish shared definitions and categorization criteria.
5. Explore patterns and relationships across interviews.
6. Develop and refine emerging themes.
7. Document analytical decisions throughout the process.

The application is designed to support researcher interpretation, not replace it. Visual patterns and code frequencies are treated as opportunities for further examination rather than definitive findings.

## Built With

- **HTML, CSS, and JavaScript** for the application interface
- **Supabase** for authentication and shared data storage
- **PostgreSQL** for database management
- **Vercel** for deployment
- **GitHub** for version control and documentation

## Project Status

**Active development | Research prototype**

Interpretive Atlas is an ongoing project developed alongside an active qualitative research study. Features and workflows are being refined based on how the application supports our analysis.

The current version is designed primarily around our research needs rather than as a general-purpose qualitative analysis platform.

The application supports shared editing through saved workspace updates, but does not currently provide simultaneous-edit conflict resolution. Regular data backups are recommended.

The public dashboard should only be used with research data approved for public sharing.

## About

Created by **Kayla Sharp**, a doctoral student in Higher Education Administration at the University of Florida College of Education, in support of a collaborative qualitative research project with **Alex Stoetzer**.

Interpretive Atlas reflects an interest in using digital tools to support research workflows, collaborative interpretation, and transparent analytical practices.
