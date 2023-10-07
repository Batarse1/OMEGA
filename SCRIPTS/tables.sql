CREATE TABLE EMAIL_ADDRESS (
    EMAIL_ADDRESS_ID NUMBER PRIMARY KEY,
    BUSINESS_ENTITY_ID NUMBER,
    EMAIL_ADDRESS VARCHAR2(100 CHAR) UNIQUE,
    ROWGUID VARCHAR2(50 CHAR),
    MODIFIED_DATE DATE
);

CREATE TABLE DEPARTMENT (
    DEPARTMENT_ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(50 CHAR),
    GROUP_NAME VARCHAR2(50 CHAR),
    MODIFIED_DATE DATE
);

CREATE TABLE EMPLOYEE (
  BUSINESS_ENTITY_ID NUMBER PRIMARY KEY,
  NATIONAL_ID_NUMBER VARCHAR2(20),
  LOGIN_ID VARCHAR2(50),
  ORGANIZATION_NODE VARCHAR2(50),
  ORGANIZATION_LEVEL NUMBER,
  JOB_TITLE VARCHAR2(50),
  BIRTH_DATE DATE,
  MARITAL_STATUS CHAR(1),
  GENDER CHAR(1),
  HIRE_DATE DATE,
  SALARIED_FLAG NUMBER(1),
  VACATION_HOURS NUMBER,
  SICK_LEAVE_HOURS NUMBER,
  CURRENT_FLAG NUMBER(1),
  ROW_GUID VARCHAR2(50 CHAR),
  MODIFIED_DATE DATE
);

CREATE TABLE EMPLOYEE_DEPARTMENT_HISTORY (
  BUSINESS_ENTITY_ID NUMBER,
  DEPARTMENT_ID NUMBER,
  SHIFT_ID NUMBER,
  START_DATE DATE,
  END_DATE DATE,
  MODIFIED_DATE DATE
);
CREATE TABLE PRODUCT_CATEGORY (
    PRODUCT_CATEGORY_ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(50 CHAR),
    ROWGUID RAW(16),
    MODIFIED_DATE DATE
);

CREATE TABLE PRODUCT_SUBCATEGORY (
    PRODUCT_SUBCATEGORY_ID NUMBER PRIMARY KEY,
    PRODUCT_CATEGORY_ID NUMBER,
    NAME VARCHAR2(50 CHAR),
    ROWGUID RAW(16),
    MODIFIED_DATE DATE,
    FOREIGN KEY (PRODUCT_CATEGORY_ID) REFERENCES PRODUCT_CATEGORY(PRODUCT_CATEGORY_ID)
);

CREATE TABLE STATE_PROVINCE (
    STATE_PROVINCE_ID NUMBER PRIMARY KEY,
    STATE_PROVINCE_CODE VARCHAR2(20 CHAR),
    COUNTRY_REGION_CODE VARCHAR2(20 CHAR),
    IS_ONLY_STATE_PROVINCE_FLAG NUMBER,
    NAME VARCHAR2(50 CHAR),
    TERRITORY_ID NUMBER,
    ROWGUID RAW(16),
    MODIFIED_DATE DATE
);

CREATE TABLE EMPLOYEE_PAY_HISTORY (
    BUSINESS_ENTITY_ID NUMBER PRIMARY KEY,
    RATE_CHANGE_DATE DATE,
    RATE NUMBER,
    PAY_FREQUENCY NUMBER,
    MODIFIED_DATE DATE
);

CREATE TABLE PERSON (
    BUSINESS_ENTITY_ID NUMBER PRIMARY KEY,
    PERSON_TYPE VARCHAR2(2),
    NAME_STYLE NUMBER,
    TITLE VARCHAR2(10),
    FIRST_NAME VARCHAR2(50),
    MIDDLE_NAME VARCHAR2(25),
    LAST_NAME VARCHAR2(50),
    SUFFIX VARCHAR2(10),
    EMAIL_PROMOTION NUMBER,
    ADDITIONAL_CONTACT_INFO VARCHAR2(200),
    DEMOGRAPHICS VARCHAR2(200),
    ROWGUID VARCHAR2(36),
    MODIFIED_DATE DATE
);

CREATE TABLE PERSON_PHONE (
    BUSINESS_ENTITY_ID NUMBER PRIMARY KEY,
    PHONE_NUMBER VARCHAR2(25),
    PHONE_NUMBER_TYPE_ID NUMBER,
    MODIFIED_DATE DATE
);

CREATE TABLE PRODUCT (
    PRODUCT_ID NUMBER,
    NAME VARCHAR2(260),
    PRODUCT_NUMBER VARCHAR2(50),
    MAKE_FLAG NUMBER,
    FINISHED_GOODS_FLAG NUMBER,
    COLOR VARCHAR2(50),
    SAFETY_STOCK_LEVEL NUMBER,
    REORDER_POINT NUMBER,
    STANDARD_COST NUMBER,
    LIST_PRICE NUMBER,
    SIZE_ VARCHAR2(50),
    SIZE_UNIT_MEASURE_CODE VARCHAR2(10),
    WEIGHT_UNIT_MEASURE_CODE VARCHAR2(10),
    WEIGHT NUMBER,
    DAYS_TO_MANUFACTURE NUMBER,
    PRODUCT_LINE VARCHAR2(10),
    CLASS VARCHAR2(10),
    STYLE VARCHAR2(10),
    PRODUCT_SUBCATEGORY_ID NUMBER,
    PRODUCT_MODEL_ID NUMBER,
    SELL_START_DATE DATE,
    SELL_END_DATE DATE,
    DISCONTINUED_DATE DATE,
    ROWGUID VARCHAR2(16),
    MODIFIED_DATE DATE
);

