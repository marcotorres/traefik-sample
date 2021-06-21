<?php
require_once('plugins/login-servers.php');

/** Set supported servers
 * @param array array($domain) or array($domain => $description) or array($category => array())
 * @param string
 */
return new AdminerLoginServers([
    "Data Base Server Name" => array("server" => 'hostname', "driver" => "server"),
]);
