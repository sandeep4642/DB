<databaseChangeLog xmlns="http://www.liquibase.org/xml/ns/dbchangelog"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog
                        http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-3.4.xsd">
 
  <changeSet id="add-fk-between-emp-and-dept" author="sheng.w">
    <addForeignKeyConstraint constraintName="fk_emp_dept"
      baseTableName="employee" baseColumnNames="dept" referencedTableName="department"
      referencedColumnNames="id" onDelete="CASCADE" onUpdate="CASCADE" />
  </changeSet>
   
  <changeSet id="add_index" author="sheng.w">
    <createIndex tableName="employee" indexName="idx_exp_name">
      <column name="emp_name"/>
    </createIndex>
  </changeSet>
   
  <changeSet id="tag-1.2" author="sheng.w">
    <tagDatabase tag="1.2" />
  </changeSet>
 
</databaseChangeLog>
