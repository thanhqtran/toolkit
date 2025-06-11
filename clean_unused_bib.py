#! /usr/bin/env python3
import regex as re
import os

# this code removes unused entries from a .bib file based on the citations found in a .bbl file
# Usage: python clean_unused_bib.py
# Make sure you have the required files in the same directory:

bib_file = 'references.bib'
bbl_file = 'manuscript.bbl'

def get_cited_entries(bbl_file):
    with open(bbl_file, 'r', encoding='utf-8') as f:
        bbl_content = f.read()
        
    bibitem_matches = re.findall(r'\\bibitem.*{([^}]*)}', bbl_content)
    return set(bibitem_matches)

def remove_unused_entries(bib_file, cited_entries):
    with open(bib_file, 'r', encoding='utf-8') as f:
        bib_content = f.read()

    # Split .bib content into entries
    bib_entries = re.split(r'(@\w+{)', bib_content)
    new_bib_content = ''

    # Iterate through entries and keep only cited ones
    for i in range(1, len(bib_entries), 2):
        entry_type = bib_entries[i].strip()
        entry = bib_entries[i + 1].strip()
        key_match = re.match(r'^([^,]*)', entry)
        if key_match:
            key = key_match.group(1).strip()
            if key in cited_entries:
                new_bib_content += entry_type + entry + '\n\n'

    # Write to .bib file
    with open('updated.bib', 'w', encoding='utf-8') as f:
        f.write(new_bib_content)

cited_entries = get_cited_entries(bbl_file)
remove_unused_entries(bib_file, cited_entries)
