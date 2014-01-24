nepho-openshift
===============

This is a cloudlet for [nepho](http://github.com/huit/nepho) that deploys OpenShift Origin on Fedora 19.

Included Blueprints
-------------------
**aws-bootstrap**
This blueprint spins up a single Fedora 19 instance, runs the bootstrap sequence, and then executes a command to generate an AMI from the resulting state.  It outputs an explanation message and the newly created AMI's ImageID. This only needs to be run once, then the AMI set as a parameter. If a custom AMI already exists with the same name, this blueprint will fail.

**all-in-one**
Run all OO services on a single instance in AWS.

**full-stack**
A full OO stack consisting of separate broker, support, and node instances.

**vagrant-all-in-one**
Run all OO services on a single local Vagrant Fedora 19 instance.
