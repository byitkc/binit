# Brandon's Initialization Automation

This will be a collection of initialization scripts for a variety of platforms
and operating systems.

## Platform

My primary "serverstation" runs Fedora 34 and KVM for virtualization along with
podman for containers. Running a threadripper and a bunch of memory.

All systems are deployed and tested against NVMe SSD so time estimate and your
mileage may vary depending on your configuration.

I'll be using a combination of the following technologies here:

- Bash
- Powershell
- Ansible
- Butane (future for FCOS)
- Ignition (future for FCOS)

## Primary Use Case

Primarily I'm working from cloned images from offline machines in KVM. I simply
create a template.(os-name) machine and clone from there. My first use case is
simply automating some of the steps involved with deploying both Linux and
Windows servers in the lab.

## Network Security

I'll be utilizing Cisco Firepower Threat Defense Virtual devices for local
firewalling between network in my VM space. Please see
[Cisco Support](https://cisco.com/go/support) for downloads if you have the
proper entitlement.

I have a Fortigate for my primary edge firewall in my lab.
