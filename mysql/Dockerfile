FROM mysql:8.0.45-debian

# 컨테이너에 커스텀 설정 주입
COPY ./conf.d/my.cnf /etc/mysql/conf.d/my.cnf

# 초기화 SQL/스키마/시드 (최초 1회 실행)
COPY ./init/ /docker-entrypoint-initdb.d/