use iol2
go

begin tran

update tcl_cliente_otros
set 
username='registro_' + cast(id_cliente as varchar(400)), 
password='A97QgUtET�kY�xkpu3�8',
recordat='testeo123'

update tus_usuario_otros
set
password='A97QgUtET�kY�xkpu3�8'

update tcl_cliente
set emailxxx='oQG@HpKOqRuKXvHyOM�R�NSvUdUIh?wK�'

update tcl_mails_iol
set emailxxx='it.desarrollo@invertironline.com'

commit tran

