// @apiVersion 0.1.0
// @name life
// @description this is the meaning of life
// @shortDescription shorting meaning of life
// @param name string Name of this this component
// @optionalParam other string DefaultValue The other parameter
{
    apiVersion: "v1",
    kind: "Service",
    metadata: {
        name: import 'param://name',
        annotations: {
            other: import 'param://other',
        },
    },
    spec: {
        ports: [
            {
                port: 80,
                targetPort: 80,
            },
        ],
        selector: {
            app: "life",
        },
    },
}