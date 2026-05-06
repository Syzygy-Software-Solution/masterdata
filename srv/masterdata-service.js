const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
    const { Participant, AuditLogs } = this.entities;

    this.on('createParticipants', async (req) => {
        const items = req.data.items;
        if (!Array.isArray(items) || items.length === 0) {
            return req.error(400, 'No participants provided');
        }
        try {
            await INSERT.into(Participant).entries(items);
            return { count: items.length };
        } catch (err) {
            req.error(500, `Failed to insert participants: ${err.message}`);
        }
    });

    this.on('createAuditLogs', async (req) => {
        const items = req.data.items;
        if (!Array.isArray(items) || items.length === 0) {
            return req.error(400, 'No audit logs provided');
        }
        try {
            await INSERT.into(AuditLogs).entries(items);
            return { count: items.length };
        } catch (err) {
            req.error(500, `Failed to insert audit logs: ${err.message}`);
        }
    });
});
