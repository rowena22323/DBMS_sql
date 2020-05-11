--1. 주문번호 '19971213'에 대하여 주문번호, 주문순번, 제품번호, 주문수량을 주문수량의 오름차순으로 조회
select ord_no, line_no, item_no, ord_qty from po_order_detail where ord_no='19971213' ORDER BY ord_qty asc;
--2. 1997년 12월에 공급처 'LG전자'로 주문한 모든 건에 대해 주문번호와 주문일을 주문일의 내림차순으로 조회 ('YYYY-MM-DD')
select po_order_header.ord_no, to_char(po_order_header.ord_date,'YYYY-MM-DD') from po_order_header, po_supplier 
where po_supplier.sup_no = po_order_header.sup_no and po_supplier.sup_name='LG전자' order by po_order_header.ord_date desc;
--3. 주문번호가 '19971203'인 주문에 대해 주문번호, 제품번호, 제품명, 제품별 주문수량을 제품번호의 오름차순으로 조회
select detail.ord_no, detail.item_no, item.item_name, detail.ord_qty from po_order_detail detail, po_item item 
where item.item_no = detail.item_no and detail.ord_no = 19971203 order by detail.item_no asc;
--4. 납기가 지났으나 납품이 완료되지 않은 모든 주문에 대하여 주문번호와 공급처 이름, 전화번호를 공급처 이름의 오름차순으로 조회
select header.ord_no,supplier.sup_name,supplier.sup_phone from po_order_header header, po_supplier supplier 
where header.sup_no = supplier.sup_no and header.delv_date is null order by supplier.sup_name asc;
--5. 구매팀, 외자팀, 홍보부 내에서 각 부서별로 사번이 가장 빠른 사원의 부서명과 사원번호
select emp_dep, min(emp_no) from po_employeer group by emp_dep order by 2;
--6. 홍보부의 박찬호 직원이 1997년에 주문을 낸 공급처의 이름과 공급처의 주소를 공급처 이름의 오름차순으로 중복되지 않게 조회
select sup.sup_name, sup.sup_addr from po_employeer emp, po_order_header head, po_supplier sup 
where emp.emp_no = head.ord_emp and sup.sup_no = head.sup_no and emp.emp_dep='홍보부' and emp.emp_name='박찬호' and to_char(head.ord_date,'yyyy')=1997 
order by sup.sup_name asc;
--7. 공급처 LG전자로부터 1997년 12월에 납품받은 제품에 대한 총 지불대금(각 제품 지불대금의 총합)
select sum(po_item.unit_price*po_order_detail.ord_qty) from po_item,po_order_detail,po_order_header 
where po_order_detail.item_no = po_item.item_no and po_order_header.ord_no = po_order_detail.ord_no
and to_char(po_order_header.delv_date,'yy/mm')='97/12' and po_order_header.sup_no='S004';
--8. 공급자별 납기 미준수 횟수가 2건인 이상인 공급처를 공급처 번호와 납기미준수 횟수로 조회
select sup_no, count(sup_no) from po_order_header where due_date < delv_date group by sup_no HAVING count(sup_no)>=2;
--9. 1997년에 주문한 제품의 단가 중에 가장 높은 단가
select max(po_item.unit_price) from po_order_detail, po_item where po_order_detail.item_no = po_item.item_no and substr(po_order_detail.ord_no,1,4)='1997';