export SCAN_DIR="target/"; 
export SRCCLR_SCM_NAME=https://github.com/multibranchorg/$CI_REPO_NAME; 
export SRCCLR_SCM_URI=https://github.com/multibranchorg/$CI_REPO_NAME; 
export SRCCLR_SCM_REF=$CI_BRANCH; 
export SRCCLR_SCM_REV=$CI_COMMIT_ID; 
curl -sSL https://download.sourceclear.com/ci.sh | sh


