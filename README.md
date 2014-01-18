nepho-openshift
===============

This is a cloudlet for [nepho](http://github.com/huit/nepho) that deploys OpenShift Origin on Fedora 19.

blueprints
----------
*bootstrap*  - Create a bootstrapped Fedora 19 image to use instead of a stock image, greatly speeding up provisioning. This only needs to be run once, then the AMI set as a parameter. If a custom AMI already exists with the same name, this blueprint will fail.
*all-in-one* - Run all OO services on a single instance in AWS.
*full-stack* - A full OO stack consisting of separate broker, support, and node instances.
