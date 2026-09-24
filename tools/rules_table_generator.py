#!/usr/bin/env python

from pathlib import Path
from urllib.parse import quote
import re
import yaml
import sys

LANGUAGES = ['golang', 'python', 'c', 'lua']

# Rules in the Lua section use the id of the corresponding page in
# lua-pitfalls, so the table links to both the rule file and the page.
PITFALL_BASE_URL = 'https://ligurio.github.io/lua-pitfalls'

IMPACT_MAP = {
    'LOW': "Low",
    'MEDIUM': "Medium",
    'HIGH': "High",
    None: "",
}

CONFIDENCE_MAP = {
    'LOW': "Low",
    'MEDIUM': "Medium",
    'HIGH': "High",
    None: "",
}


def pitfall_url(rule_id):
    """Return the lua-pitfalls page URL for a rule id, or None."""
    if re.fullmatch(r'L\d+', rule_id):
        return f'{PITFALL_BASE_URL}/p/{rule_id}/'
    if re.fullmatch(r'T\d+', rule_id):
        return f'{PITFALL_BASE_URL}/t/{rule_id}/'
    return None


def rule_cell(rule_id, rule_path):
    """Build the ID table cell and reference definitions for a rule.

    Lua rules get a cell of the form
    ``L1001 ([rule][L1001-rule], [desc][L1001-desc])`` together with the
    two reference definitions. Other rules keep a plain link to the rule
    file.
    """
    url = pitfall_url(rule_id)
    if url is None:
        return f'[{rule_id}](rules/{rule_path})', []
    rule_ref = f'{rule_id}-rule'
    desc_ref = f'{rule_id}-desc'
    cell = f'{rule_id} ([rule][{rule_ref}], [desc][{desc_ref}])'
    refs = [
        f'[{rule_ref}]: rules/{rule_path}',
        f'[{desc_ref}]: {url}',
    ]
    return cell, refs


def main():
    lua_refs = []

    for language in LANGUAGES:
        rules_for_lang = []
        for rule_path in Path(language).rglob('*.yaml'):
            try:
                rules_data = yaml.safe_load(rule_path.open())
            except yaml.YAMLError as err:
                print(f"Error reading {rule_path} - {err}", file=sys.stderr)
                continue

            if rules_data is None or 'rules' not in rules_data:
                print(f"Error for {rule_path} - missing rules", file=sys.stderr)
                continue

            rules_data = rules_data['rules']
            if len(rules_data) == 0:
                print(f"Error for {rule_path} - missing any rule", file=sys.stderr)
                continue

            for rule_data in rules_data:
                rule_link = '.'.join(rule_path.parts[1:-1] + (rule_path.stem,))
                # rule_link = '.'.join(("r/trailofbits", language, rule_link, rule_data['id']))
                rules_for_lang.append((rule_path, rule_data, rule_link))

        if len(rules_for_lang) > 0:
            print(f"### {language.capitalize()}")
            print("")
            print("| ID | Description |")
            print("| -- | ----------- |")
            # print("| ID | Playground | Impact | Confidence | Description |")
            # print("| -- | :--------: | :----: | :--------: | ----------- |")

            for rule_path, rule_data, rule_link in sorted(rules_for_lang, key=lambda x: (x[0], x[1]['id'])):
                rule_meta = rule_data.get('metadata', {})
                cell, refs = rule_cell(rule_data['id'], rule_path)
                if refs:
                    lua_refs.extend(refs)
                print(
                    # f"| [{rule_data['id']}]({rule_path}) | [Playground](https://semgrep.dev/playground/{quote(rule_link)}) | {IMPACT_MAP[rule_meta.get('impact')]} | {CONFIDENCE_MAP[rule_meta.get('confidence')]} | {rule_meta.get('description', '')} |"
                    f"| {cell} | {rule_meta.get('description', '')} |"
                )

            print("\n")

    if lua_refs:
        print("\n".join(lua_refs))


if __name__ == "__main__":
    main()
