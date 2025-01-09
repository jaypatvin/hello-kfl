CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL,
    address_1 VARCHAR(255),
    address_2 VARCHAR(255),
    city VARCHAR(100),
    engagement_date_start DATE NOT NULL,
    engagement_date_end DATE
);
CREATE TABLE kfl_coordinators (
    kfl_coordinator_id INT PRIMARY KEY,
    kfl_coordinator_name VARCHAR(255) NOT NULL,
    kfl_coordinator_email VARCHAR(255) UNIQUE NOT NULL,
    kfl_coordinator_phone VARCHAR(20),
    kfl_coordinator_location VARCHAR(100)
);
CREATE TABLE client_contacts (
    client_contact_id INT PRIMARY KEY,
    contact_person VARCHAR(255) NOT NULL,
    contact_role VARCHAR(100),
    contact_phone VARCHAR(20),
    contact_email VARCHAR(255) UNIQUE NOT NULL
    
);
CREATE TABLE client_coordinators (
    client_id INT NOT NULL,
    contact_number VARCHAR (10),
    get_status VARCHAR(10),
    kfl_coordinator_id INT NOT NULL,
    PRIMARY KEY (client_id, kfl_coordinator_id),
    FOREIGN KEY (client_id) REFERENCES clients(client_id),
    FOREIGN KEY (kfl_coordinator_id) REFERENCES kfl_coordinators(kfl_coordinator_id) 
);
CREATE TABLE client_client_contacts (
    client_id INT NOT NULL,
    client_contact_id INT NOT NULL,
    PRIMARY KEY (client_id, client_contact_id),
    FOREIGN KEY (client_id) REFERENCES clients(client_id),
    FOREIGN KEY (client_contact_id) REFERENCES client_contacts(client_contact_id)
);


-- Ace
CREATE TABLE atm(
gcash INT NOT NULL,
);