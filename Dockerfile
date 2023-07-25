FROM pcloud/eks-helm-kubectl:latest
ARG KUBE_VERSION="v1.27.4"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["cluster-info"]
