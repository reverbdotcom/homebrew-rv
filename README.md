Homebrew RV
---
A homebrew for rv

# Release

The release process is mainly automated. 
Once the release has been cut in the reverbdotcom/rv repository, wait for the travis build to attach the binaries.tar.gz to the release. 

Then, run `make release VERSION=v0.0.X` in this repository.

This task will shasum the release and commit the changes to this repository.
