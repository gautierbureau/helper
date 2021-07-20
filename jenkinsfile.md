""" ou ''' : pour des lignes multiples
Sinon "" ou ''  suffit

""" :  templatable string, where variables are substituted into a string, use double quotes. 

${VAR} are groovy vars
 in sh we have to use \${VAR}

https://stackoverflow.com/questions/37219348/jenkins-pipeline-sh-bad-substitution/58734288#58734288

https://stackoverflow.com/questions/39982414/access-a-groovy-variable-from-within-shell-step-in-jenkins-pipeline



#rm -rf \${JENKINS_WORK_DIR}/thirdparties/build
#mkdir -p \${JENKINS_WORK_DIR}/thirdparties/build
#pushd \${JENKINS_WORK_DIR}/thirdparties/build
#rm -f \${WORKSPACE}/thirdparties/patch/GNU_4.8.5/ma27.patch # Temporary
#cmake \${WORKSPACE}/thirdparties -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=\${JENKINS_WORK_DIR}/thirdparties/install -DNNI=${GIT_USERNAME} -DPASSWORD=${GIT_PASSWORD}


#ARG USER_NAME=jenkins
#ARG USER_ID=10000
#ARG GROUP_ID=10000
#ARG GROUP_NAME=jenkins

#RUN groupadd -f ${GROUP_NAME} -g ${GROUP_ID}

#RUN useradd -l -m -d /home/${USER_NAME} ${USER_NAME} -g ${GROUP_ID} -u ${USER_ID}

#USER ${USER_NAME}

#WORKDIR /home/${USER_NAME}


BUILD_DISPLAY_NAME=#37
BUILD_ID=37
BUILD_NUMBER=37
BUILD_TAG=jenkins-modeles-modeles_statiques-37
BUILD_URL=https://devin-ic.rte-france.com/job/modeles/job/modeles_statiques/37/
EXECUTOR_NUMBER=2
gitlabActionType=PUSH
gitlabAfter=9a67498bd4707c5c84a9ebe602ca1e585c8ad3f7
gitlabBefore=c3d56f4f46360c8a4109745cdee7429ebd2c1c82
gitlabBranch=FB_2079
gitlabMergeRequestLastCommit=9a67498bd4707c5c84a9ebe602ca1e585c8ad3f7
gitlabSourceBranch=FB_2079
gitlabSourceNamespace=modeles
gitlabSourceRepoHomepage=https://devin-source.rte-france.com/modeles/modeles_statiques
gitlabSourceRepoHttpUrl=https://devin-source.rte-france.com/modeles/modeles_statiques.git
gitlabSourceRepoName=modeles_statiques
gitlabSourceRepoSshUrl=git@devin-source.rte-france.com:modeles/modeles_statiques.git
gitlabSourceRepoURL=git@devin-source.rte-france.com:modeles/modeles_statiques.git
gitlabTargetBranch=FB_2079
gitlabUserEmail=gautier.bureau@rte-france.com
gitlabUserName=BUREAU GAUTIER
HOME=/var/jenkins-slave
HUDSON_COOKIE=550869b2-2c2f-4a4f-bf5b-f14c0dc2ff35
HUDSON_HOME=/var/jenkins_home
HUDSON_SERVER_COOKIE=b2201d4f4df04d28
HUDSON_URL=https://devin-ic.rte-france.com/
JENKINS_HOME=/var/jenkins_home
JENKINS_JAR_FILE=/usr/share/jenkins/slave.jar
JENKINS_LOGFILE=/var/jenkins-slave/log/jenkins-slave.log
JENKINS_MASTER_URL=https://devin-ic.rte-france.com
JENKINS_NODE_COOKIE=2859aef2-f31b-4584-bc06-25ef1877d2b7
JENKINS_NODENAME=slave-modeles
JENKINS_SECRET=69c2bb6269e2d54cb45890f72b95164918322fc8c0aa174f85bba63c0369027e
JENKINS_SERVER_COOKIE=durable-daf10fbfacd25e1332fec37e5a8ab5bd
JENKINS_URL=https://devin-ic.rte-france.com/
JENKINS_WORK_DIR=/var/jenkins-slave/data
JOB_BASE_NAME=modeles_statiques
JOB_DISPLAY_URL=https://devin-ic.rte-france.com/job/modeles/job/modeles_statiques/display/redirect
JOB_NAME=modeles/modeles_statiques
JOB_URL=https://devin-ic.rte-france.com/job/modeles/job/modeles_statiques/
LANG=fr_FR.UTF-8
library.pipeline-devin.version=02.16.01
library.pipelines-lib-internal.version=00.03.00
LOGNAME=jenkins-slave
NLSPATH=/usr/dt/lib/nls/msg/%L/%N.cat
NODE_LABELS=devin-infos-centos7 modeles slave-modeles
NODE_NAME=slave-modeles
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
PWD=/var/jenkins-slave/data/workspace/modeles/modeles_statiques
QUALITY_REPORT_DEFAULT_RECIPIENTS=frederic-f.didier@rte-france.com
RUN_CHANGES_DISPLAY_URL=https://devin-ic.rte-france.com/job/modeles/job/modeles_statiques/37/display/redirect?page=changes
RUN_DISPLAY_URL=https://devin-ic.rte-france.com/job/modeles/job/modeles_statiques/37/display/redirect
SHELL=/bin/bash
SHLVL=2
STAGE_NAME=Hades2
USER=jenkins-slave
_=/usr/bin/printenv
WORKSPACE=/var/jenkins-slave/data/workspace/modeles/modeles_statiques
XFILESEARCHPATH=/usr/dt/app-defaults/%L/Dt

---------------------------------- in docker

BUILD_DISPLAY_NAME=#48
BUILD_ID=48
BUILD_NUMBER=48
BUILD_TAG=jenkins-modeles-modeles_statiques-48
BUILD_URL=https://devin-ic.rte-france.com/job/modeles/job/modeles_statiques/48/
CLASSPATH=
EXECUTOR_NUMBER=0
HOME=/
HOSTNAME=d434ddbb8356
HUDSON_HOME=/var/jenkins_home
HUDSON_SERVER_COOKIE=b2201d4f4df04d28
HUDSON_URL=https://devin-ic.rte-france.com/
JENKINS_HOME=/var/jenkins_home
JENKINS_NODE_COOKIE=64874d02-27f4-48e9-9c11-986949ec7beb
JENKINS_SERVER_COOKIE=durable-daf10fbfacd25e1332fec37e5a8ab5bd
JENKINS_URL=https://devin-ic.rte-france.com/
JOB_BASE_NAME=modeles_statiques
JOB_DISPLAY_URL=https://devin-ic.rte-france.com/job/modeles/job/modeles_statiques/display/redirect
JOB_NAME=modeles/modeles_statiques
JOB_URL=https://devin-ic.rte-france.com/job/modeles/job/modeles_statiques/
NODE_LABELS=devin-infos-centos7 modeles slave-modeles
NODE_NAME=slave-modeles
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
PWD=/var/jenkins-slave/data/workspace/modeles/modeles_statiques
QUALITY_REPORT_DEFAULT_RECIPIENTS=frederic-f.didier@rte-france.com
RUN_CHANGES_DISPLAY_URL=https://devin-ic.rte-france.com/job/modeles/job/modeles_statiques/48/display/redirect?page=changes
RUN_DISPLAY_URL=https://devin-ic.rte-france.com/job/modeles/job/modeles_statiques/48/display/redirect
SHLVL=2
STAGE_NAME=Build
TZ=Europe/Paris
WORKSPACE=/var/jenkins-slave/data/workspace/modeles/modeles_statiques
_=/usr/bin/printenv
gitlabActionType=PUSH
gitlabAfter=9a96a4f78204dfd452a34e209d32b29cb1a7ae78
gitlabBefore=c73eb2639b39fc31332f9fb17c04dd15733a6734
gitlabBranch=FB_2079
gitlabMergeRequestLastCommit=9a96a4f78204dfd452a34e209d32b29cb1a7ae78
gitlabSourceBranch=FB_2079
gitlabSourceNamespace=modeles
gitlabSourceRepoHomepage=https://devin-source.rte-france.com/modeles/modeles_statiques
gitlabSourceRepoHttpUrl=https://devin-source.rte-france.com/modeles/modeles_statiques.git
gitlabSourceRepoName=modeles_statiques
gitlabSourceRepoSshUrl=git@devin-source.rte-france.com:modeles/modeles_statiques.git
gitlabSourceRepoURL=git@devin-source.rte-france.com:modeles/modeles_statiques.git
gitlabTargetBranch=FB_2079
gitlabUserEmail=gautier.bureau@rte-france.com
gitlabUserName=BUREAU GAUTIER
library.pipeline-devin.version=02.16.01
library.pipelines-lib-internal.version=00.03.00


