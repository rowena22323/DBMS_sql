--1. �ֹ���ȣ '19971213'�� ���Ͽ� �ֹ���ȣ, �ֹ�����, ��ǰ��ȣ, �ֹ������� �ֹ������� ������������ ��ȸ
select ord_no, line_no, item_no, ord_qty from po_order_detail where ord_no='19971213' ORDER BY ord_qty asc;
--2. 1997�� 12���� ����ó 'LG����'�� �ֹ��� ��� �ǿ� ���� �ֹ���ȣ�� �ֹ����� �ֹ����� ������������ ��ȸ ('YYYY-MM-DD')
select po_order_header.ord_no, to_char(po_order_header.ord_date,'YYYY-MM-DD') from po_order_header, po_supplier 
where po_supplier.sup_no = po_order_header.sup_no and po_supplier.sup_name='LG����' order by po_order_header.ord_date desc;
--3. �ֹ���ȣ�� '19971203'�� �ֹ��� ���� �ֹ���ȣ, ��ǰ��ȣ, ��ǰ��, ��ǰ�� �ֹ������� ��ǰ��ȣ�� ������������ ��ȸ
select detail.ord_no, detail.item_no, item.item_name, detail.ord_qty from po_order_detail detail, po_item item 
where item.item_no = detail.item_no and detail.ord_no = 19971203 order by detail.item_no asc;
--4. ���Ⱑ �������� ��ǰ�� �Ϸ���� ���� ��� �ֹ��� ���Ͽ� �ֹ���ȣ�� ����ó �̸�, ��ȭ��ȣ�� ����ó �̸��� ������������ ��ȸ
select header.ord_no,supplier.sup_name,supplier.sup_phone from po_order_header header, po_supplier supplier 
where header.sup_no = supplier.sup_no and header.delv_date is null order by supplier.sup_name asc;
--5. ������, ������, ȫ���� ������ �� �μ����� ����� ���� ���� ����� �μ���� �����ȣ
select emp_dep, min(emp_no) from po_employeer group by emp_dep order by 2;
--6. ȫ������ ����ȣ ������ 1997�⿡ �ֹ��� �� ����ó�� �̸��� ����ó�� �ּҸ� ����ó �̸��� ������������ �ߺ����� �ʰ� ��ȸ
select sup.sup_name, sup.sup_addr from po_employeer emp, po_order_header head, po_supplier sup 
where emp.emp_no = head.ord_emp and sup.sup_no = head.sup_no and emp.emp_dep='ȫ����' and emp.emp_name='����ȣ' and to_char(head.ord_date,'yyyy')=1997 
order by sup.sup_name asc;
--7. ����ó LG���ڷκ��� 1997�� 12���� ��ǰ���� ��ǰ�� ���� �� ���Ҵ��(�� ��ǰ ���Ҵ���� ����)
select sum(po_item.unit_price*po_order_detail.ord_qty) from po_item,po_order_detail,po_order_header 
where po_order_detail.item_no = po_item.item_no and po_order_header.ord_no = po_order_detail.ord_no
and to_char(po_order_header.delv_date,'yy/mm')='97/12' and po_order_header.sup_no='S004';
--8. �����ں� ���� ���ؼ� Ƚ���� 2���� �̻��� ����ó�� ����ó ��ȣ�� ������ؼ� Ƚ���� ��ȸ
select sup_no, count(sup_no) from po_order_header where due_date < delv_date group by sup_no HAVING count(sup_no)>=2;
--9. 1997�⿡ �ֹ��� ��ǰ�� �ܰ� �߿� ���� ���� �ܰ�
select max(po_item.unit_price) from po_order_detail, po_item where po_order_detail.item_no = po_item.item_no and substr(po_order_detail.ord_no,1,4)='1997';