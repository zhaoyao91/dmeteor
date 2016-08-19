set -e

bash $DMETEOR_DIR/lib/install_base.sh
bash $DMETEOR_DIR/lib/install_node.sh
bash $DMETEOR_DIR/lib/install_meteor.sh
bash $DMETEOR_DIR/lib/cleanup.sh