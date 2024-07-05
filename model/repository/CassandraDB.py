from cassandra.cluster import Cluster

class CassandraDB:
    def __init__(self, contact_points=['localhost'], keyspace='activida1_jhonsolis', port=7000):
        self.cluster = Cluster(contact_points)
        self.session = self.cluster.connect(keyspace)
    
    def close(self):
        self.session.shutdown()
        self.cluster.shutdown()