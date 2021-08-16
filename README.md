# T-SQL-Project

Warunki zaliczenia projektu: - będą trochę zmienione

Należy wygenerować bazę danych na MS SQL oraz Oracle.
Temat dowolny (nie mniej niż 5 tabel). Najlepiej użyć diagram encji z RBD zmieniając ustawienia docelowej bazy danych na MS SQL Server. Tabele należy uzupełnić danymi tak, żeby zapytania SQL zwracały sensowne wyniki . 
Napisać min. 5 zapytań z podzapytaniami do swojej bazy (w tym co najmniej 2 skorelowane) co najmniej dwa umieszczone w klauzuli where i co najmniej 2 z group by umieszczone w klauzuli having.  Dla każdego podać sensowną treść biznesową zapytań  i rozwiązanie - 2p ( tylko w MSSQL SQL-Server). Przy zapytaniach grupujących na liście having nie można  robić ograniczeń na kolumnie, po której grupujemy. Nie umieszczać podzapytania skorelowanego w klauzuli select
Napisać co najmniej 2 procedury  w T-SQL. Zadanie ma być sensowne biznesowo. W parametrach procedury nie mogą występować  klucze sztuczne ( np. id)  Na maksymalną ocenę należy  w jednej z procedur użyć kursora lub innego niebanalnego rozwiązania. Druga procedura powinna opierać się na danych z co najmniej dwóch tabel - 2p  Każda procedura powinna mieć co najmniej 15 instrukcji w ramach swojego ciała
Napisać co najmniej 2 wyzwalacze  w T-SQL.  Zadanie ma być sensowne biznesowo. Na maksymalną ocenę wyzwalacze muszą działać poprawnie nawet, gdy operacje  aktywujące je dotyczą więcej niż jednego rekordu i zawierać coś więcej niż np. sprawdzenie jednego warunku i zgłoszenie błędu. - 2p  Co najmniej jeden z wyzwalaczy powinien mieć minimalnie 10 instrukcji i dotyczyć wszystkich operacji zmieniających tabelę (Insert, Update i Delete) - niezależnie.
