# ---- Dockerfile for Odoo Community on Render ----
FROM odoo:17.0

# Environment defaults
ENV HOST=0.0.0.0 \
    DB_HOST=db \
    DB_PORT=5432 \
    DB_USER=odoo \
    DB_PASSWORD=odoo \
    PGUSER=odoo

EXPOSE 8069 8072
CMD ["odoo", "-i", "base", "--without-demo=all"]
