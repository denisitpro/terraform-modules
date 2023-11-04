# Description
This module is designed for a specific use case  - backup, which includes the following features:

* SSE Encryption: It uses Server-Side Encryption (SSE) for data security.
* Default Bucket Versioning: Versioning for the bucket is enabled by default, ensuring that previous versions of objects are preserved.
* Amazon S3 Bucket Keys for SSE-KMS: This feature is turned on to utilize Amazon S3 Bucket Keys for SSE with AWS Key Management Service (KMS).
* Lifecycle Policy Enabled: This module has a default lifecycle policy in place, which sets objects to expire after 45 days

