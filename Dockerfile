FROM portainer/portainer-ce

LABEL description="Q4.SaiBot"
LABEL version="0.1"

LABEL portainer.container.list="hidden"

HEALTHCHECK --interval=30s \
            --timeout=30s \
            --start-period=5s \
            --retries=3 \
        CMD curl --fail http://localhost:9000/ || exit 1