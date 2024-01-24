 # Création des répertoires nécessaires sur HDFS
 hadoop fs -mkdir -p /user/mapr/pipeline/hive 
# Copie des fichiers workflow.xml et scripts Hive sur HDFS
 hadoop fs -put workflow.xml /user/mapr/pipeline/hive/ 
hadoop fs -put hive.hql /user/mapr/pipeline/hive/ 
# Soumission du workflow Oozie 
/opt/mapr/oozie/oozie-4.3.0/bin/oozie job -oozie "http://localhost:11000/oozie" -config job.properties -run 

# Vérification de l'état du workflow via la ligne de commande 
/opt/mapr/oozie/oozie-4.3.0/bin/oozie job -oozie "http://localhost:11000/oozie" -info <workflow-id> 
