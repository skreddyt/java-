$tomcat_pname = $facts['os']['family'] ? {
    'ubuntu' => 'tomcat',
    'debian' => 'tomcat7',

}
package { '$tomcat_pname':
    ensure => installed,
    
}
service { "$tomcat_pname":
    ensure     => running,
    enable     => true,
    
}
