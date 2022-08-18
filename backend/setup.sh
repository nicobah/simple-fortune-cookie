# Create a folder
mkdir actions-runner && cd actions-runner

# Download the latest runner package
curl -o actions-runner-linux-x64-2.295.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.295.0/actions-runner-linux-x64-2.295.0.tar.gz

# Optional: Validate the hash
echo "a80c1ab58be3cd4920ac2e51948723af33c2248b434a8a20bd9b3891ca4000b6  actions-runner-linux-x64-2.295.0.tar.gz" | shasum -a 256 -c

# Extract the installer
tar xzf ./actions-runner-linux-x64-2.295.0.tar.gz

# Create the runner and start the configuration experience
./config.sh --url https://github.com/nicobah/simple-fortune-cookie --token AKGM6TUWYU44JTZ64IOQMYDC7YFMM

# Last step, run it!
./run.sh
