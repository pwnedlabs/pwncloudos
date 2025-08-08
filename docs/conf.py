# Configuration file for the Sphinx documentation builder.

import os
import sys
sys.path.insert(0, os.path.abspath('../src'))  # Adjust if you have code in src/

# -- Project information -----------------------------------------------------
project = 'PWNCLOUDOS'
copyright = '2025, PwnedLabs'
author = 'PwnedLabs'
release = '1.0'  # You can set this dynamically later if needed

# -- General configuration ---------------------------------------------------
extensions = [
    'sphinx.ext.autodoc',     # Pulls in docstrings from code
    'sphinx.ext.napoleon',    # Supports Google/Numpy-style docstrings
]

templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

# -- Options for HTML output -------------------------------------------------
html_theme = 'sphinx_rtd_theme'  # CHANGE from 'alabaster'
html_static_path = ['_static']

# Theme options
html_theme_options = {
    'body_max_width': '90%',
    'navigation_depth': 4,
}

# CSS files
html_css_files = [
    'custom.css',
]