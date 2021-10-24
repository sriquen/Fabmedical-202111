host="fabmedical-mcw.mongo.cosmos.azure.com"
username="fabmedical-mcw"
password="thoLQdqwQOHH0pppvhhuuydIlM1LPhxAM9Jdwpb8MPRfvKcTZCbMGS4jxNsgk7LfCuXfZQfFsuoIXcGIZOXXiQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
