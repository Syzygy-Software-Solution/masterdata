namespace SZ;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity AuditLogs : cuid, managed {
    AUDIT_ID        : Int64;
    TENANT_ID       : String;
    EVENT_TIMESTAMP : Timestamp;
    USER_ID         : String;
    USER_NAME       : String;
    SOURCE          : String;
    ACTION_TYPE     : String;
    ENTITY_ID       : String;
    ENTITY_NAME     : String;
    ENTITY_TYPE     : String;
    MODULE          : String;
    APPLICATION     : String;
    FIELD_NAME      : String;
    OLD_VALUE       : String;
    NEW_VALUE       : String;
    DESCRIPTION     : String;
    BUSINESS_UNIT   : String;
    STATUS          : String;
    ERROR_MESSAGE   : String;
    OBJECT_SEQ      : Int64;
    MODEL_SEQ       : Int64;
}

entity Participant {
    key PARTICIPANTID             : String(255);
        FIRSTNAME                 : String(90);
        MIDDLENAME                : String(90);
        LASTNAME                  : String(90);
        BUSINESSUNIT              : String;
        POSITIONNAME              : String(255);
        SALARY                    : Decimal(25, 10);
        UNITTYPEFORSALARY         : Integer64;
        HIREDATE                  : Timestamp;
        TERMINATIONDATE           : Timestamp;
        USERNAME                  : String(255);
        EMAILID                   : String(255);
        USERID                    : String(255);
        EFFECTIVESTARTDATE        : Timestamp;
        EFFCTIVEENDDATE           : Timestamp;
        CREATEDATE                : Timestamp;
        REMOVEDATE                : Timestamp;
        GENERICATTRIBUTE1         : String(255);
        GENERICATTRIBUTE2         : String(255);
        GENERICATTRIBUTE3         : String(255);
        GENERICATTRIBUTE4         : String(255);
        GENERICATTRIBUTE5         : String(255);
        GENERICATTRIBUTE6         : String(255);
        GENERICATTRIBUTE7         : String(255);
        GENERICATTRIBUTE8         : String(255);
        GENERICATTRIBUTE9         : String(255);
        GENERICATTRIBUTE10        : String(255);
        GENERICNUMBER1            : Decimal(25, 10);
        UNITTYPEFORGENERICNUMBER1 : Integer64;
        GENERICNUMBER2            : Decimal(25, 10);
        UNITTYPEFORGENERICNUMBER2 : Integer64;
        GENERICNUMBER3            : Decimal(25, 10);
        UNITTYPEFORGENERICNUMBER3 : Integer64;
        GENERICNUMBER4            : Decimal(25, 10);
        UNITTYPEFORGENERICNUMBER4 : Integer64;
        GENERICNUMBER5            : Decimal(25, 10);
        UNITTYPEFORGENERICNUMBER5 : Integer64;
        GENERICNUMBER6            : Decimal(25, 10);
        UNITTYPEFORGENERICNUMBER6 : Integer64;
        GENERICDATE1              : Timestamp;
        GENERICDATE2              : Timestamp;
        GENERICDATE3              : Timestamp;
        GENERICDATE4              : Timestamp;
        GENERICDATE5              : Timestamp;
        GENERICDATE6              : Timestamp;
        GENERICBOOLEAN1           : Integer;
        GENERICBOOLEAN2           : Integer;
        GENERICBOOLEAN3           : Integer;
        GENERICBOOLEAN4           : Integer;
        GENERICBOOLEAN5           : Integer;
        GENERICBOOLEAN6           : Integer;
        ISPARTNER                 : Boolean;
}