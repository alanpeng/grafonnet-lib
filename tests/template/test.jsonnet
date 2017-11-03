local grafana = import "grafonnet/grafana.libsonnet";
local template = grafana.template;

{
    basic: template.new("host", "elastic", "test-query"),
    advanced: template.new(
        "newhost",
        "newelastic",
        "newtest-query",
        label="node",
        allValues="$ALL",
        tagValuesQuery="tvquery",
        current={ foo: "bar" },
        hide="value",
        includeAll=true,
        multi=true,
    ),
}
