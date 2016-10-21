# AWS ECS Ghost.js Template

A template for building out a Ghost.js website for running under AWS ECS (Amazon's Elastic Container Service).


## Installation

1. Setup your AWS Cluster, Task Definition, and Service for the Container to receive the project. (Note: AWS terminology capitalized.)
2. Setup scripts submodule as referenced [here](https://github.com/TheLarsonAgency/aws-ecs-deploy-scripts).
3. Edit the [`config.js`](https://github.com/TheLarsonAgency/aws-ecs-ghostjs-template/blob/master/config.js) changing the `app_dns` variable at the top.
4. (optional) Edit `env.sh` from step 1, and add the variables from the `config.js` as needed for configuring your development database instance (if you choose to create a development instance.
5. Execute the following:
    ```bash
    source env.sh
    ./scripts/docker_build.sh
    ./scripts/docker_deploy.sh
    ```
    
If you wish to test the application before deploying it, execute `./scripts/docker_run.sh`.

You may experience an error the first time deploying as the script attempts to restart the container after deployment.  Not to worry, but make sure that you have your service in AWS set to 1 or more instances.


## Support or Feature Requests

Feel free to submit an issue on GitHub or create a pull request.


## Author

[Bobby Larson](http://bobby.social) of [The Larson Agency](http://larson.agency)


## License

Please see [accompanying file](https://github.com/TheLarsonAgency/aws-ecs-ghostjs-template/blob/master/LICENSE).
