-- single-line comment
/*
  multiple-line comment
*/

/*
  쿼리문 (SQL) 실행
  1. 일부 실행 : 선택 후 Ctrl + Enter
  2. 전체 스크립트 실행 : 선택 없이 F5
*/

-- 18c 의 경우 모든 계정 이름이 C## 으로 시작해야 한다. (이 설정을 없애기)
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- 기존 계정 삭제
DROP USER GREEN CASCADE;
--CASCADE는 SQL에서 참조 무결성을 유지하기 위해 사용되는 옵션으로, 외래 키(foreign key) 제약 조건과 함께 사용됩니다. 
--CASCADE 옵션은 부모 테이블에서 행이 삭제되거나 업데이트될 때 자식 테이블에 자동으로 연쇄적으로 영향을 미치도록 설정할 수 있습니다.

-- 새 계정 추가 (사용 계정)
CREATE USER GREEN IDENTIFIED BY 1111;

-- 새 계정에 권한 부여 (관리자 권한)
GRANT DBA TO GREEN;ㄴ