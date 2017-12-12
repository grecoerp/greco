
SET FOREIGN_KEY_CHECKS=0;

INSERT INTO `ACTIVITE`(`last_update`,`user_update`,`ip_update`,`activiteID`,`libelleFr`,`libelleUs`,`millesime`,`niveauActiviteID`,`activiteParentID`,`code`,
`organisationID`,`presentationFr`,`presentationUs`,`strategieFr`,`strategieUs`,`structureResponsable`,`agentResponsable`,`autreResponsable`)
SELECT `PREPAACTIVITE`.`last_update`,
    `PREPAACTIVITE`.`user_update`,
    `PREPAACTIVITE`.`ip_update`,
    `PREPAACTIVITE`.`activiteID`,
    `PREPAACTIVITE`.`libelleFr`,
    `PREPAACTIVITE`.`libelleUs`,
    `PREPAACTIVITE`.`millesime`,
    `PREPAACTIVITE`.`niveauActiviteID`,
    `PREPAACTIVITE`.`activiteParentID`,
    `PREPAACTIVITE`.`code`,
    `PREPAACTIVITE`.`organisationID`,
    `PREPAACTIVITE`.`presentationFr`,
    `PREPAACTIVITE`.`presentationUs`,
    `PREPAACTIVITE`.`strategieFr`,
    `PREPAACTIVITE`.`strategieUs`,
    `PREPAACTIVITE`.`structureResponsable`,
    `PREPAACTIVITE`.`agentResponsable`,
    `PREPAACTIVITE`.`autreResponsable`
FROM `grecodb`.`PREPAACTIVITE`
WHERE activiteID = 'PATV20170926104953.765.294';


INSERT INTO `OPERATIONBUDGETAIRE`
(`last_update`,`user_update`,`ip_update`,`tacheID`,`libelleFr`,`libelleUs`,`dateDebut`,`dateFin`,`resultatFr`,`resultatUs`,`indicateurFr`,`indicateurUs`,
`sourceVerificationFr`,`sourceVerificationUs`,`AE`,`CP`,`CompteCode`,`financementID`,`structureID`,
`activiteBudgetiseID`,`posteComptableID`,`ordreDansActivite`,`AEReport`,`CPReport`,`AEInitial`,`CPInitial`,`AEAdditif`,`CPAdditif`,`calendrier`)
SELECT `PREPAOPERATIONBUDGETAIRE`.`last_update`,
    `PREPAOPERATIONBUDGETAIRE`.`user_update`,
    `PREPAOPERATIONBUDGETAIRE`.`ip_update`,
    `PREPAOPERATIONBUDGETAIRE`.`tacheID`,
    `PREPAOPERATIONBUDGETAIRE`.`libelleFr`,
    `PREPAOPERATIONBUDGETAIRE`.`libelleUs`,
    `PREPAOPERATIONBUDGETAIRE`.`dateDebut`,
    `PREPAOPERATIONBUDGETAIRE`.`dateFin`,
    `PREPAOPERATIONBUDGETAIRE`.`resultatFr`,
    `PREPAOPERATIONBUDGETAIRE`.`resultatUs`,
    `PREPAOPERATIONBUDGETAIRE`.`indicateurFr`,
    `PREPAOPERATIONBUDGETAIRE`.`indicateurUs`,
    `PREPAOPERATIONBUDGETAIRE`.`sourceVerificationFr`,
    `PREPAOPERATIONBUDGETAIRE`.`sourceVerificationUs`,
    `PREPAOPERATIONBUDGETAIRE`.`AE`,
    `PREPAOPERATIONBUDGETAIRE`.`CP`,
    `PREPAOPERATIONBUDGETAIRE`.`CompteCode`,
    `PREPAOPERATIONBUDGETAIRE`.`financementID`,
    `PREPAOPERATIONBUDGETAIRE`.`structureID`,
    `PREPAOPERATIONBUDGETAIRE`.`activiteBudgetiseID`,
    `PREPAOPERATIONBUDGETAIRE`.`posteComptableID`,
    `PREPAOPERATIONBUDGETAIRE`.`ordreDansActivite`,
	0, 0, 0, 0, 0, 0, 
    `PREPAOPERATIONBUDGETAIRE`.`calendrier`
FROM `grecodb`.`PREPAOPERATIONBUDGETAIRE`
where activiteBudgetiseID = 'PATV20170926104953.765.294';


/*
INSERT INTO `grecodb`.`operationbudgetae`
(`last_update`,
`user_update`,
`ip_update`,
`operationID`,
`budgetID`,
`tacheID`,
`ae`,
`budgetExploite`,
`virDebitReserve`,
`virDebitValide`,
`virCreditValide`)
SELECT `operationbudgetaire`.`last_update`,
    `operationbudgetaire`.`user_update`,
    `operationbudgetaire`.`ip_update`,
    `operationbudgetaire`.`tacheID`,
	'BGT20171028002655.43.305',
	'OPR20170926105054.533.736',
    `operationbudgetaire`.`AE`,
	'00100',
	0,
	0,
	0
FROM `grecodb`.`operationbudgetaire`
where activiteBudgetiseID = 'PATV20170926104953.765.294';
*/

/*
INSERT INTO `grecodb`.`operationbudgetcp`
(`last_update`,
`user_update`,
`ip_update`,
`operationID`,
`budgetID`,
`tacheID`,
`cp`,
`budgetExploite`,
`virDebitReserve`,
`virDebitValide`,
`virCreditValide`)
SELECT `operationbudgetaire`.`last_update`,
    `operationbudgetaire`.`user_update`,
    `operationbudgetaire`.`ip_update`,
    `operationbudgetaire`.`tacheID`,
	'BGT20171028002655.43.305',
	'OPR20170926105054.533.736',
    `operationbudgetaire`.`AE`,
	'00100',
	0,
	0,
	0
FROM `grecodb`.`operationbudgetaire`
where activiteBudgetiseID = 'PATV20170926104953.765.294';
*/



SET FOREIGN_KEY_CHECKS=1;
