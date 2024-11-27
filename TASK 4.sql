1)create or replace function audit_claims()
returns trigger as $$
begin
If TG_OP = 'INSERT' then
insert into audit_claims()
values (new.policy_id,'INSERT',now())
ELSIF TG_OP = 'UPDATE' then
update 
ELSIF TG


end if;
return null;
end;
$$ language plpgsql

create trigger claim_audit
after insert or update or delte on claim
for each row 
execute fucntion audit_claims

2) create or replace function auto_expiring()
returns trigger as $$
begin
if new end_date<current_date then
update ploicies ser status ='Expired'
where policy_id = new.policy_id
end if
return new
end
$$ language plpgsql

create trigger expiring_auto
before insert or update or policies
for each row
execute fucntion auto_expiring()

3)create or replace fucntion auto_cal_comission()
returns trigger as $$
begin
update agents set commission_rate=commission_rate + premium_amount=preminum_amount *1.10 from 
policies p where a.agent_id =p.agent 
return null;
end;
$$ language plpgsql

create trigger auto_claim
after insert or update on agents
for each row
execute function auto_cal_commission()

3)create or replace function auto_update_status()
returns trigger as $$
begin
if new.amount_claim <10000 then
new.status = 'approved'
new.approved_by='system auto approved'
end if;
return new;
end;
$$ language plpgsql

create or replace trigger auto_status
before insert on claims
for each row
execute function auto_update_status()



