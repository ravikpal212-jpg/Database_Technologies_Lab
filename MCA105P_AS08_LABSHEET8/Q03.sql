/* Full Question: Create a function consultation_with_tax(fee, tax_percent) that returns the consultation fee after adding the supplied tax percentage. Display original and calculated fees. */

DELIMITER //
CREATE FUNCTION consultation_with_tax(fee DECIMAL(10,2), tax_percent DECIMAL(5,2)) RETURNS DECIMAL(10,2) DETERMINISTIC RETURN fee*(1+tax_percent/100) //
DELIMITER ;
SELECT PatientName,ConsultationFee,consultation_with_tax(ConsultationFee,10) AS fee_with_tax FROM Patients;
