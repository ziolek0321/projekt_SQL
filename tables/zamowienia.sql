
CREATE TABLE Zamowienia (
	id_zamowienia INT IDENTITY (1001,1),
	id_koszyk INT NOT NULL,
	id_klienta INT NOT NULL,
	data_zamowienia DATE NOT NULL,
	id_platnosc INT NOT NULL,
	zaplacone BIT NOT NULL,
	faktora BIT,
	status_zamowienia VARCHAR (20) NOT NULL,
	id_transport INT NOT NULL,
	czas_dostawy VARCHAR (2) NOT NULL

PRIMARY KEY (id_zamowienia));

ALTER TABLE Zamowienia ADD FOREIGN KEY (id_koszyk) REFERENCES Koszyk (id_koszyk)
ALTER TABLE Zamowienia ADD FOREIGN KEY (id_klienta) REFERENCES Klient (id_klient)
ALTER TABLE Zamowienia ADD FOREIGN KEY (id_platnosc) REFERENCES Platnosc (id_platnosc)
ALTER TABLE Zamowienia ADD FOREIGN KEY (id_transport) REFERENCES Transport (id_transport)
