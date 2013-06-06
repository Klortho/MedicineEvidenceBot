MedicineEvidenceBot
===================

Mediawiki bot to populate Wikipedia medicine article talk pages.
See [this Wikiproject Medicine talk page
discussion](http://en.wikipedia.org/wiki/Wikipedia_talk:WikiProject_Medicine#Bot_for_talk_page_evidence_box)

# Design

* It will find first create a list of pages, which is the union of all pages that
  transclude any of the following (list is from
  [here](http://en.wikipedia.org/wiki/Wikipedia:WikiProject_Medicine#Infoboxes))
    * Template:Infobox disease for articles on diseases
    * Template:Infobox symptom for articles about signs or symptoms
    * Template:Interventions infobox for articles pertaining to procedures
    * Template:Diagnostic infobox for diagnostic test
    * Template:Drugbox for medications
    * Template:Drugclassbox for classes of medication

* Read the talk page of each of those

* If the talk page doesn't already have `{{Template:WPMED/Evidence}}` anywhere in it,
  then it will insert it at the top, and save the new page.

