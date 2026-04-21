using SZ as db from '../db/masterdata-schema';

service MasterDataService  {
    entity Participant                as projection on db.Participant;
    // entity ReferralPrograms      as projection on db.SZ_REFERRAL_PROGRAM;
    // entity ReferralRelationships as projection on db.SZ_REFERRAL_RELATIONSHIP;
}
