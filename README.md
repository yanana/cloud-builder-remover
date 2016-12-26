# cloud-builder-remover

[![Docker Repository on Quay](https://quay.io/repository/yanana/cloud-builder-remover/status "Docker Repository on Quay")](https://quay.io/repository/yanana/cloud-builder-remover)

This is a tool builder to remove something simply using `rm` command, for use in [Google Cloud Container Builder](https://cloud.google.com/container-builder/docs/)'.

## Examples

The following example demonstrates a build request that uses this builder.

### Remove useless files for subsequent steps

This `cloudbuild.yaml` invokes `rm -rf a b c d/` in the build's workspace.

```yaml
steps:
- name: quay.io/yanana/cloud-builder-extractor
  args: ['a', 'b', 'c', 'd/']
  id: deletion
```
