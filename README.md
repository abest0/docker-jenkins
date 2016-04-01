# Running Jenkins in Docker

We follow along with [Maxfield Stewart's series](http://engineering.riotgames.com/news/putting-jenkins-docker-container) to create a Jenkins stack using a **Jenkins** image and a **Nginx** proxy. 

## Expected Outcomes

### Jenkins & ECS plugin...Yes please :joy_cat:
We want to test how difficult it is to extend the default Jenkins image to a container spin up with the [Amazon ECS Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Amazon+EC2+Container+Service+Plugin) already installed.

## Results

### Jenkins Plugins
When you're trying to create a `plugins.txt`( as specified by the [Jenkins documentation](https://github.com/jenkinsci/docker#installing-more-tools)) for a Jenkins plugins with long dependency chain, you're life will hurt for a little while.  Jenkins is really good at managing the dependencies *within* Jenkins, however, there [aren't any reasonable solutions](https://github.com/jenkinsci/docker/issues/147) for generating a manifest of plugins outside of Jenkins. It takes some time and patience to span the dependency tree, rebuild the image, and monitor the Jenkins log, to determine the source of any startup failures.

## Summary









