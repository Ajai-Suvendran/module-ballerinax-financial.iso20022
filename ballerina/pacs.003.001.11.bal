// Copyright (c) 2024, WSO2 LLC. (https://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied. See the License for the
// specific language governing permissions and limitations
// under the License.

public type Pac003Document1 Pacs003Document;

public type DirectDebitTransactionInformation31 record {|
    PaymentIdentification13 PmtId;
    PaymentTypeInformation27 PmtTpInf?;
    ActiveCurrencyAndAmount IntrBkSttlmAmt;
    ISODate IntrBkSttlmDt?;
    Priority3Code SttlmPrty?;
    SettlementDateTimeIndication1 SttlmTmIndctn?;
    ActiveOrHistoricCurrencyAndAmount InstdAmt?;
    BaseOneRate XchgRate?;
    ChargeBearerType1Code ChrgBr;
    Charges16[] ChrgsInf?;
    ISODate ReqdColltnDt?;
    DirectDebitTransaction12 DrctDbtTx?;
    PartyIdentification272 Cdtr;
    CashAccount40 CdtrAcct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt;
    CashAccount40 CdtrAgtAcct?;
    PartyIdentification272 UltmtCdtr?;
    PartyIdentification272 InitgPty?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt1?;
    CashAccount40 IntrmyAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt2?;
    CashAccount40 IntrmyAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt3?;
    CashAccount40 IntrmyAgt3Acct?;
    PartyIdentification272 Dbtr;
    CashAccount40 DbtrAcct;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt;
    CashAccount40 DbtrAgtAcct?;
    PartyIdentification272 UltmtDbtr?;
    Purpose2Choice Purp?;
    RegulatoryReporting3[] RgltryRptg?;
    RemittanceLocation8[] RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
    SupplementaryData1[] SplmtryData?;
|};

public type Pacs003Document record {|
    FIToFICustomerDirectDebitV11 FIToFICstmrDrctDbt;
|};

public type FIToFICustomerDirectDebitV11 record {|
    GroupHeader125 GrpHdr;
    DirectDebitTransactionInformation31[] DrctDbtTxInf;
    SupplementaryData1[] SplmtryData?;
|};

public type GroupHeader125 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    Authorisation1Choice[] Authstn?;
    BatchBookingIndicator BtchBookg?;
    Max15NumericText NbOfTxs;
    DecimalNumber CtrlSum?;
    ActiveCurrencyAndAmount TtlIntrBkSttlmAmt?;
    ISODate IntrBkSttlmDt?;
    SettlementInstruction14 SttlmInf;
    PaymentTypeInformation27 PmtTpInf?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
|};

public type SettlementInstruction14 record {|
    SettlementMethod2Code SttlmMtd;
    CashAccount40 SttlmAcct?;
    ClearingSystemIdentification3Choice ClrSys?;
|};

public type SettlementMethod2Code string;
