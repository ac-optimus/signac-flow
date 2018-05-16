{% extends "base_script.sh" %}
{% block header %}
#PBS -N {{ id }}
{% if walltime is not none %}
#PBS -l walltime={{ walltime|format_timedelta }}
{% endif %}
{% if not no_copy_env %}
#PBS -V
{% endif %}
{% block tasks %}
{% set s_ppn = ':ppn=' ~ ppn if ppn else ''  %}
{% if nn is not none %}
#PBS -l nodes={{ nn }}{{ s_ppn }}
{% endif %}
{% endblock %}
{% endblock %}
