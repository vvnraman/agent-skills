################
Agent skill repo
################

Repo to collect agent skills.

Deployment
==========

Use ``deploy-skills.sh`` to sync skills from ``./skills`` to
``~/.config/ai-skills/``.
Set ``AGENT_SKILLS_DIR`` to override the target directory.

Usage
-----

.. code-block:: bash

   ./deploy-skills.sh [--no-dry-run] [-s|--skill <skill-name>]

Examples
--------

.. code-block:: bash

   ./deploy-skills.sh
   ./deploy-skills.sh --skill project-docs
   ./deploy-skills.sh --no-dry-run
   ./deploy-skills.sh --no-dry-run --skill project-docs
   AGENT_SKILLS_DIR=/tmp/ai-skills ./deploy-skills.sh --skill project-docs
