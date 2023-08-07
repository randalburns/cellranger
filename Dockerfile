FROM --platform=linux/amd64 conda/miniconda3-centos7

ENV PATH=/opt/cellranger-7.1.0:$PATH

ADD bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm /tmp/

RUM yum -y install \
    which \
    wget
RUN yum -y localinstall /tmp/bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm




