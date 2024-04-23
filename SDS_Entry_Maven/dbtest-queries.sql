

Question 1. --->Solution
select SUM(claimed_charge) from document where status = 'EXPORTED';

////////////////////////////////////////////////////////////////////////

Question 2. --->Solution
 select d.insured_name, d.insured_address, d.claimed_charge
    from document d
    inner join batch b ON d.batch_id = b.customer_id
     where d.status = 'TO_REPRICE'
     and b.customer_id IN (1, 2);


