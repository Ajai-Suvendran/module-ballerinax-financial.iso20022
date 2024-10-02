public type Pacs010Document1 Pacs010Document;

public type CreditTransferTransaction66 record {|
    Max35Text CdtId;
    BatchBookingIndicator BtchBookg?;
    PaymentTypeInformation28 PmtTpInf?;
    ActiveCurrencyAndAmount TtlIntrBkSttlmAmt?;
    ISODate IntrBkSttlmDt?;
    SettlementDateTimeIndication1 SttlmTmIndctn?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt1?;
    CashAccount40 IntrmyAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt2?;
    CashAccount40 IntrmyAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt3?;
    CashAccount40 IntrmyAgt3Acct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt?;
    CashAccount40 CdtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 Cdtr;
    CashAccount40 CdtrAcct?;
    BranchAndFinancialInstitutionIdentification8 UltmtCdtr?;
    InstructionForCreditorAgent3[] InstrForCdtrAgt?;
    DirectDebitTransactionInformation33[] DrctDbtTxInf;
    SupplementaryData1[] SplmtryData?;
|};

public type DirectDebitTransactionInformation33 record {|
    PaymentIdentification13 PmtId;
    PaymentTypeInformation28 PmtTpInf?;
    ActiveCurrencyAndAmount IntrBkSttlmAmt;
    ISODate IntrBkSttlmDt?;
    Priority3Code SttlmPrty?;
    SettlementDateTimeIndication1 SttlmTmIndctn?;
    SettlementTimeRequest2 SttlmTmReq?;
    BranchAndFinancialInstitutionIdentification8 UltmtDbtr?;
    BranchAndFinancialInstitutionIdentification8 Dbtr;
    CashAccount40 DbtrAcct?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    CashAccount40 DbtrAgtAcct?;
    Max210Text InstrForDbtrAgt?;
    Purpose2Choice Purp?;
    RemittanceInformation2 RmtInf?;
|};

public type Pacs010Document record {|
    FinancialInstitutionDirectDebitV06 FIDrctDbt;
|};

public type FinancialInstitutionDirectDebitV06 record {|
    GroupHeader119 GrpHdr;
    CreditTransferTransaction66[] CdtInstr;
    SupplementaryData1[] SplmtryData?;
|};

public type GroupHeader119 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    Max15NumericText NbOfTxs;
    DecimalNumber CtrlSum?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
|};

public type Max210Text string;


