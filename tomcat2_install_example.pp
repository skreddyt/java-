service { 'tomcat':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => package['tomcat']
    # pattern    => 'tomcat',
}
package { 'tomcat':
    ensure => installed,
    before => service['tomcat']   
}