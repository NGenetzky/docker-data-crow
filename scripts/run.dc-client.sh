#!/bin/sh

dc_client(){
  local userdir="${HOME}/.local/share/dc-client"
  local installdir="/opt/dc-client"
  local workdir="/opt/dc-client"

  # -client
  #  This has to be used in case you want to connect to a client.

  # -db:<database name> 
  #  Forces Data Crow to use another database.

  # -dir:<installation directory> 
  #  Use this parameter when Data Crow starts incorrectly and complains about missing 
  #  directories (non Windows platform only). 

  # -userdir:<user directory> 
  #  Use this parameter to specify a specific user directory. Multiple instances
  #  of Data Crow can be started using this parameter. Additionally the selected user
  #  folder path will not be stored in the datacrow.properties file. You can also make
  #  the path relative to the Data Crow installation folder by supplying the path as
  #  './<folder name>'. Example: -userdir:./data

  # -credentials:username/password
  #  Specify the login credentials to start Data Crow without displaying the login dialog.

  # -nosplash
  #  Hides the splashscreen on startup.

  # -debug
  #  For additional logging information.     

  # -clearsettings
  #  Loads the default Data Crow settings. Disgards all user settings.

  (
    cd "${workdir}"
    java -Xmx512m \
      -jar "${installdir}/datacrow.jar" \
      -client \
      "-dir:${installdir}" \
      "-userdir:${userdir}"
  )
}

dc_client
