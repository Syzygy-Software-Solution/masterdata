using SZ as db from '../db/masterdata-schema';

service MasterDataService {
    entity Participant as projection on db.Participant;
    entity AuditLogs   as projection on db.AuditLogs;

    action createParticipants(items : array of Participant) returns {
        count : Integer;
    };

    action createAuditLogs(items : array of AuditLogs)      returns {
        count : Integer;
    };
}
