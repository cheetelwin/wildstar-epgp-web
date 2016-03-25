{% extends 'base.tpl' %}
{% block sidebar %}
    <div class="col-lg-2">
        <div class="well">
            <ul class="raider-nav nav nav-pills nav-stacked text-center">
                <li class="list-group-item"><a href="/">Back</a></li>
            </ul>
        </div>
        <div class="alert alert-info text-center" role="alert">
            Your personal API key:
            <code>{{ current_user._api_key | replace("'", '') | replace ('b', '') }}</code>
        </div>
    </div>
{% endblock %}
{% block content -%}
    <div class="col-lg-6">
        <form action="/do-import" method="POST">
            <textarea name="json-data" id="import-text" cols="30" rows="10" placeholder="Paste Data Here"
                      class="form-control"></textarea>
            <button class="btn">Submit</button>
        </form>
    </div>
{% endblock %}
