SHOW USER;
-- �ּ�

-- DBA �����ͺ��̽� ����
-- �� �������� �� ��, ������, ���� ����
-- �������� ��� ������ ������ �̿��ؼ� ������� ��й�ȣ�� �����ؼ� ���
-- DBA�� ������ ������ �� ����ϴ� ���� ����� ���� ���� ������ system������ �ο��Ǿ� ����
-- �׷��� system�������θ� ������ ������ �� ���� 

-- �������� �������� ����Ͽ� ���� ����, ������ ����� �� �ִ� ���Ѻο�
-- Oracle DBMS ����
-- 11XE -> 18c

-- 1. �������� ������
CREATE USER C##OLAUSER01 IDENTIFIED BY OLAUSER01;
DROP USER C##OLAUSER01;

-- C##�� ���� ������ ������ �� �ֵ��� �ϴ� ��ɾ�
ALTER SESSION SET "_ORACLE_SCRIPT" = true; --Session��(��) ����Ǿ����ϴ�.

-- C##�� ���� ���� ����
CREATE USER OLAUSER01 IDENTIFIED BY OLAUSER01; --User OLAUSER01��(��) �����Ǿ����ϴ�.


-- create user olauser01 identified by olauser01;
-- 2. ���ӱ���, ���ҽ�(���̺� ��) ���� ���� �ο�


-- 2.1 ���ӱ��� �ο� 
GRANT CONNECT TO OLAUSER01; -- Grant��(��) �����߽��ϴ�.

-- 2.2 ���ҽ� ���Ѻο�
-- ORA-01031: ������ ������մϴ� 01031. 00000 -  "insufficient privileges"

GRANT RESOURCE TO OLAUSER01; -- Grant��(��) �����߽��ϴ�.
-- ���� �Ҵ緮�� ���� ������ �����Ƿ� ���� �ο� ��ɾ� ����


-- 2.3 �Ҵ緮 ���Ѻο�(18c)
-- ���� �Ҵ緮�� ���� ������ �����Ƿ� ���� �ο� ��ɾ� ����
-- SQL ����: ORA-01950: ���̺����̽� 'USERS'�� ���� ������ �����ϴ�. 01950. 00000 -  "no privileges on tablespace '%s'"
ALTER USER OLAUSER01 DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

-- ������ KH, ��й�ȣ KH�� ������ �����Ͽ� ���� �� ���̺� �����ϰ� 
-- ���� �߰��� �� �ֵ��� ��������.

CREATE USER KH IDENTIFIED BY KH;
GRANT CONNECT, RESOURCE TO KH;
ALTER USER KH DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;






