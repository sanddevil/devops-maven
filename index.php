<?php 

	print '<h1>Branch DO-001</h1>'.'<br />';

	$memcache_obj = new Memcached('a_mem_pool');

	if ($memcache_obj->addServer('127.0.0.1', 11211, 1)) {
		echo 'Memcached is running ok';
	} 
	else {
		echo 'Could not find Memcached - configuration error';
	}
	echo '<br />';

	phpinfo(); 


