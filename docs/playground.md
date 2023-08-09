---
template: editor.html
hide:
  - navigation
  - toc
---

# Playground

You can use the playground below to create and evaluate resource snippets to include in your jsonnet configuration:

<div class="inverse hgroup">
  <div class=hgroup-inline>
    <div class="tab-window-input" id="input">
      <div class="tab-header">
      </div>
      <textarea id=playground-jsonnet>
{% include 'jsonnet/playground.jsonnet' %}
      </textarea>
      <textarea id=otterdog-defaults-libsonnet>
{% include 'jsonnet/otterdog-defaults.libsonnet' %}
      </textarea>
      <textarea id=otterdog-functions-libsonnet>
{% include 'jsonnet/otterdog-functions.libsonnet' %}
      </textarea>
    </div>
    <div class="bigarrow">➡</div>
    <div class="tab-window-output" id="output">
      <div class="tab-header">
        <div class=selected onclick="tab_output_click(this, 'json-output')">output.json</div>
      </div>
      <textarea readonly class="selected code-json" id="json-output">
      </textarea>
    </div>
    <script>
      demo(
        'input',
        {
          'playground-jsonnet': 'playground.jsonnet',
          'otterdog-defaults-libsonnet': 'otterdog-defaults.libsonnet',
          'otterdog-functions-libsonnet': 'otterdog-functions.libsonnet'
        },
        'playground.jsonnet',
        'output',
        false,
        false
      );
    </script>
    <div style="clear: both"></div>
  </div>
</div>

## Resource functions and default values

The following snippets illustrate the functions to create the supported resources with default values as defined in the 
[default configuration](https://github.com/EclipseFdn/otterdog-defaults/blob/main/otterdog-defaults.libsonnet) used at the Eclipse Foundation.
