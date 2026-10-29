-- Database Technologies Lab Sheet 1
-- Course Code: MCA105P
-- Question 34: Large Data Storage Types
-- Full Question: Change column content in document_store to doc_body while maintaining its LONGTEXT type.

ALTER TABLE document_store CHANGE COLUMN content doc_body LONGTEXT;
