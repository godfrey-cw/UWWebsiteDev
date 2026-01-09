---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: home
---

I’m a machine learning researcher at [AKASA](https://akasa.com/), where I work
on end-to-end generative AI solutions for healthcare revenue cycle management.

Previously, I was an applied machine learning scientist at [Thomson Reuters
Labs](https://www.thomsonreuters.com/en/careers/our-jobs/join-thomson-reuters-labs.html),
tuning AI agents for knowledge workers, and a postdoctoral research associate at
[Pacific Northwest National Laboratory](https://www.pnnl.gov/) in Tegan
Emerson’s Math of Data Science group, mentored by [Henry
Kvinge](https://hkvinge.github.io/). Before that, I completed a PhD in
mathematics (algebraic geometry) at the [University of
Washington](https://math.washington.edu/), advised by [Sándor
Kovács](http://sites.math.washington.edu/~kovacs/current/index.html).

# Research

I work on applied research for LLM-driven machine learning systems. I am
interested in holistic evaluation of deep learning models, including bias,
robustness, explainability and interpretability, and post-hoc analysis of
learned features (e.g. representation (dis)similarity metrics).

My pure math research focused on birational geometry and singularities, mostly in
positive and mixed characteristic.

## Publications

*Note: my [Google Scholar](https://scholar.google.com/citations?user=yfT92d4AAAAJ&hl=en) profile may be more complete and up to date.*

### Main Track
{% for pub in site.data.publications %}
{% if pub.category == "Main Track" %}
1. {{ pub.authors }}.
   [{{ pub.title }}]({{ pub.url }}).
   In *{{ pub.venue }}*{% if pub.note %}, {{ pub.note }}{% endif %}.{% if pub.code %} Code available at [{{ pub.code }}]({{ pub.code }}){% endif %}
{% endif %}
{% endfor %}

### Workshop
{% for pub in site.data.publications %}
{% if pub.category == "Workshop" %}
1. {{ pub.authors }}.
   [{{ pub.title }}]({{ pub.url }}).
   In *{{ pub.venue }}*{% if pub.note %}, {{ pub.note }}{% endif %}.{% if pub.code %} Code available at [{{ pub.code }}]({{ pub.code }}){% endif %}
{% endif %}
{% endfor %}

## Preprints
{% for pub in site.data.publications %}
{% if pub.category == "Preprints" %}
1. {% if pub.authors %}{{ pub.authors }}. {% endif %}[{{ pub.title }}]({{ pub.url }}) {{ pub.venue }}.{% if pub.code %} Code available at [{{ pub.code }}]({{ pub.code }}){% endif %}
{% endif %}
{% endfor %}