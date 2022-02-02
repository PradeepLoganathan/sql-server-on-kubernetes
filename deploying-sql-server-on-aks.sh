az login

az group create --location australiaeast \
                --name sqltestharg

# {
#   "id": "/subscriptions/44444/resourceGroups/sqltestharg",
#   "location": "australiaeast",
#   "managedBy": null,
#   "name": "sqltestharg",
#   "properties": {
#     "provisioningState": "Succeeded"
#   },
#   "tags": null,
#   "type": "Microsoft.Resources/resourceGroups"
# }


az aks create \
    --resource-group sqltestharg \
    --name sqlakscluster \
    --node-count 3 \
    --node-vm-size=Standard_B2ms \
    --generate-ssh-keys

# {
#   "aadProfile": null,
#   "addonProfiles": null,
#   "agentPoolProfiles": [
#     {
#       "availabilityZones": null,
#       "count": 3,
#       "enableAutoScaling": false,
#       "enableEncryptionAtHost": false,
#       "enableFips": false,
#       "enableNodePublicIp": false,
#       "enableUltraSsd": false,
#       "gpuInstanceProfile": null,
#       "kubeletConfig": null,
#       "kubeletDiskType": "OS",
#       "linuxOsConfig": null,
#       "maxCount": null,
#       "maxPods": 110,
#       "minCount": null,
#       "mode": "System",
#       "name": "nodepool1",
#       "nodeImageVersion": "AKSUbuntu-1804gen2containerd-2022.01.19",
#       "nodeLabels": null,
#       "nodePublicIpPrefixId": null,
#       "nodeTaints": null,
#       "orchestratorVersion": "1.21.7",
#       "osDiskSizeGb": 128,
#       "osDiskType": "Managed",
#       "osSku": "Ubuntu",
#       "osType": "Linux",
#       "podSubnetId": null,
#       "powerState": {
#         "code": "Running"
#       },
#       "provisioningState": "Succeeded",
#       "proximityPlacementGroupId": null,
#       "scaleDownMode": null,
#       "scaleSetEvictionPolicy": null,
#       "scaleSetPriority": null,
#       "spotMaxPrice": null,
#       "tags": null,
#       "type": "VirtualMachineScaleSets",
#       "upgradeSettings": null,
#       "vmSize": "Standard_B2ms",
#       "vnetSubnetId": null
#     }
#   ],
#   "apiServerAccessProfile": null,
#   "autoScalerProfile": null,
#   "autoUpgradeProfile": null,
#   "azurePortalFqdn": "sqlaksclus-sqltestharg-d084e8-5f7d702f.portal.hcp.australiaeast.azmk8s.io",
#   "disableLocalAccounts": false,
#   "diskEncryptionSetId": null,
#   "dnsPrefix": "sqlaksclus-sqltestharg-d084e8",
#   "enablePodSecurityPolicy": null,
#   "enableRbac": true,
#   "extendedLocation": null,
#   "fqdn": "sqlaksclus-sqltestharg-d084e8-5f7d702f.hcp.australiaeast.azmk8s.io",
#   "fqdnSubdomain": null,
#   "httpProxyConfig": null,
#   "id": "/subscriptions/d084e879-5a0c-4401-861d-9b4b0436771b/resourcegroups/sqltestharg/providers/Microsoft.ContainerService/managedClusters/sqlakscluster",
#   "identity": {
#     "principalId": "8f28e2c5-5b73-4942-9293-7b295281124d",
#     "tenantId": "b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0",
#     "type": "SystemAssigned",
#     "userAssignedIdentities": null
#   },
#   "identityProfile": {
#     "kubeletidentity": {
#       "clientId": "02d21bba-1252-45e9-9478-c7719b1d66a5",
#       "objectId": "fb88ada4-bbda-49ba-8021-d443becbb59e",
#       "resourceId": "/subscriptions/d084e879-5a0c-4401-861d-9b4b0436771b/resourcegroups/MC_sqltestharg_sqlakscluster_australiaeast/providers/Microsoft.ManagedIdentity/userAssignedIdentities/sqlakscluster-agentpool"
#     }
#   },
#   "kubernetesVersion": "1.21.7",
#   "linuxProfile": {
#     "adminUsername": "azureuser",
#     "ssh": {
#       "publicKeys": [
#         {
#           "keyData": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDXycEfFRbKFoYQ35DjWCY3vK2qo0cWehSAnHokBIU7mOrYSNR6IVl47KPf/dOTj+mGStatry3iBkcf3dJP0dFTXqpPFJk5gDOHDo2zbIPQrGVHnR64eOst8XN/SwV6R51t328xyci4IFgxKGUPxl11BlLv4j9Paks+n09g2IQYGZvL8KJr6q/WIQMVeemHy8EykM+vvjSfkRjbZNXb5mjQQrK4oyhRELojX9q2Rn7kGzy3uffaS0oFoyhmMLw0lprKY3CN3P2b1stkSc/4Ff/2aExw+GsOXruPHR8mI2VQmliHTUBV/X6LPGDFAnlrXYM09qVSluacIoFi0GvArvZc1OnqMRVANuAS0etTpoWbOtxX8BQEpdp2+12a4xCIIQQdY7e4st8ui8yuhTo1zGb8/PWa17u8CfvU2lSXaopqowvtVJfya1YE2d9iaOxMoXpxGMZ5OILTgOiI68OM9GpYW/9r20L+8y529vsMkUB5/jp85pnnQXms+U48Wg8yEwszPFze+t6QVAsXoBJkEZkuvGxPjobZcpUAfCTiHEP66hIy0uDybDhJn37YDdnuNbnvltoy2Fr9mP5+hDGxh7GcU2AVro8Jp1QE8PjDbyKK1pYbz5telgTF03Knp2pjKsOObywAhq3Q/fv9LtyBswKLXtOMKCT2S2Yp6LFP/7zBtQ== email@example.com\n"
#         }
#       ]
#     }
#   },
#   "location": "australiaeast",
#   "maxAgentPools": 100,
#   "name": "sqlakscluster",
#   "networkProfile": {
#     "dnsServiceIp": "10.0.0.10",
#     "dockerBridgeCidr": "172.17.0.1/16",
#     "loadBalancerProfile": {
#       "allocatedOutboundPorts": null,
#       "effectiveOutboundIPs": [
#         {
#           "id": "/subscriptions/d084e879-5a0c-4401-861d-9b4b0436771b/resourceGroups/MC_sqltestharg_sqlakscluster_australiaeast/providers/Microsoft.Network/publicIPAddresses/1b8688da-4eed-404d-9995-cec2e8091cb0",
#           "resourceGroup": "MC_sqltestharg_sqlakscluster_australiaeast"
#         }
#       ],
#       "idleTimeoutInMinutes": null,
#       "managedOutboundIPs": {
#         "count": 1
#       },
#       "outboundIPs": null,
#       "outboundIpPrefixes": null
#     },
#     "loadBalancerSku": "Standard",
#     "natGatewayProfile": null,
#     "networkMode": null,
#     "networkPlugin": "kubenet",
#     "networkPolicy": null,
#     "outboundType": "loadBalancer",
#     "podCidr": "10.244.0.0/16",
#     "serviceCidr": "10.0.0.0/16"
#   },
#   "nodeResourceGroup": "MC_sqltestharg_sqlakscluster_australiaeast",
#   "podIdentityProfile": null,
#   "powerState": {
#     "code": "Running"
#   },
#   "privateFqdn": null,
#   "privateLinkResources": null,
#   "provisioningState": "Succeeded",
#   "resourceGroup": "sqltestharg",
#   "securityProfile": null,
#   "servicePrincipalProfile": {
#     "clientId": "msi",
#     "secret": null
#   },
#   "sku": {
#     "name": "Basic",
#     "tier": "Free"
#   },
#   "tags": null,
#   "type": "Microsoft.ContainerService/ManagedClusters",
#   "windowsProfile": null
# }


az aks get-credentials --resource-group sqltestharg --name sqlakscluster
# /home/pradeepl/.kube/config has permissions "644".
# It should be readable and writable only by its owner.
# Merged "sqlakscluster" as current context in /home/pradeepl/.kube/config

# List nodes
kubectl get nodes
# List Pods
kubectl get pods

# create storageclass, volumes and volume claims for primary and secondaries
kubectl apply -f storageclass.yaml --record
kubectl apply -f pvc-primary.yaml --record
kubectl apply -f pvc-secondaryone.yaml --record
kubectl apply -f pvc-secondarytwo.yaml --record

# Display the persistent volume and claim
kubectl get pv
# NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                      STORAGECLASS   REASON   AGE
# pvc-232cc16c-f048-473b-87b1-e1ffcb63ba89   8Gi        RWO            Delete           Bound    default/mssql-primary      azure-disk              3s
# pvc-e151eb5c-8265-4913-b4b4-dbb54ca614bb   8Gi        RWO            Delete           Bound    default/mssql-secondary1   azure-disk              2s

kubectl get pvc
# NAME               STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   AGE
# mssql-primary      Bound    pvc-232cc16c-f048-473b-87b1-e1ffcb63ba89   8Gi        RWO            azure-disk     30s
# mssql-secondary1   Bound    pvc-e151eb5c-8265-4913-b4b4-dbb54ca614bb   8Gi        RWO            azure-disk     27s
# mssql-secondary2   Bound    pvc-22003522-dda2-4e77-a46e-798e2631720d   8Gi        RWO            azure-disk     25s


kubectl create secret generic mssql-secret --from-literal=SA_PASSWORD="MySQLP@ssw0rdF0r@zure"
#secret/mssql created

# Deploy the SQL Server 2019 container
 
# Primary Replica Deployment
kubectl apply -f SQLPrimaryAGDeployment.yaml --record
 
# Secondary Replica1 Deployment
kubectl apply -f SQLSecondaryAGOneDeployment.yaml --record
 
# Secondary Replica2 Deployment
kubectl apply -f SQLSecondaryAGTwoDeployment.yaml --record
 
# Get the status of the nodes, pods and service
kubectl get all

kubectl get pods
# NAME                               READY   STATUS              RESTARTS   AGE
# mssql-deployment-cdc47fc9b-8jfg9   0/1     ContainerCreating   0          17s

kubectl get services
# NAME               TYPE           CLUSTER-IP     EXTERNAL-IP     PORT(S)          AGE
# kubernetes         ClusterIP      10.0.0.1       <none>          443/TCP          4m53s
# mssql-deployment   LoadBalancer   10.0.126.217   20.92.153.183   1433:30885/TCP   53s



kubectl logs mssql-deployment-cdc47fc9b-8jfg9
# SQL Server 2019 will run as non-root by default.
# This container is running as user mssql.
# To learn more visit https://go.microsoft.com/fwlink/?linkid=2099216.
# 2022-02-01 23:51:40.00 Server      Setup step is copying system data file 'C:\templatedata\master.mdf' to '/var/opt/mssql/data/master.mdf'.
# 2022-02-01 23:51:40.06 Server      Did not find an existing master data file /var/opt/mssql/data/master.mdf, copying the missing default master and other system database files. If you have moved the database location, but not moved the database files, startup may fail. To repair: shutdown SQL Server, move the master database to configured location, and restart.
# 2022-02-01 23:51:40.07 Server      Setup step is copying system data file 'C:\templatedata\mastlog.ldf' to '/var/opt/mssql/data/mastlog.ldf'.
# 2022-02-01 23:51:40.08 Server      Setup step is copying system data file 'C:\templatedata\model.mdf' to '/var/opt/mssql/data/model.mdf'.
# 2022-02-01 23:51:40.11 Server      Setup step is copying system data file 'C:\templatedata\modellog.ldf' to '/var/opt/mssql/data/modellog.ldf'.
# 2022-02-01 23:51:40.13 Server      Setup step is copying system data file 'C:\templatedata\msdbdata.mdf' to '/var/opt/mssql/data/msdbdata.mdf'.
# 2022-02-01 23:51:40.16 Server      Setup step is copying system data file 'C:\templatedata\msdblog.ldf' to '/var/opt/mssql/data/msdblog.ldf'.
# 2022-02-01 23:51:40.17 Server      Setup step is FORCE copying system data file 'C:\templatedata\model_replicatedmaster.mdf' to '/var/opt/mssql/data/model_replicatedmaster.mdf'.
# 2022-02-01 23:51:40.19 Server      Setup step is FORCE copying system data file 'C:\templatedata\model_replicatedmaster.ldf' to '/var/opt/mssql/data/model_replicatedmaster.ldf'.
# 2022-02-01 23:51:40.20 Server      Setup step is FORCE copying system data file 'C:\templatedata\model_msdbdata.mdf' to '/var/opt/mssql/data/model_msdbdata.mdf'.
# 2022-02-01 23:51:40.23 Server      Setup step is FORCE copying system data file 'C:\templatedata\model_msdblog.ldf' to '/var/opt/mssql/data/model_msdblog.ldf'.
# 2022-02-01 23:51:40.32 Server      Microsoft SQL Server 2019 (RTM-CU15) (KB5008996) - 15.0.4198.2 (X64) 
#         Jan 12 2022 22:30:08 
#         Copyright (C) 2019 Microsoft Corporation
#         Developer Edition (64-bit) on Linux (Ubuntu 20.04.3 LTS) <X64>
# 2022-02-01 23:51:40.32 Server      UTC adjustment: 0:00
# 2022-02-01 23:51:40.32 Server      (c) Microsoft Corporation.
# 2022-02-01 23:51:40.32 Server      All rights reserved.
# 2022-02-01 23:51:40.32 Server      Server process ID is 380.
# 2022-02-01 23:51:40.32 Server      Logging SQL Server messages in file '/var/opt/mssql/log/errorlog'.
# 2022-02-01 23:51:40.32 Server      Registry startup parameters: 
#          -d /var/opt/mssql/data/master.mdf
#          -l /var/opt/mssql/data/mastlog.ldf
#          -e /var/opt/mssql/log/errorlog
# 2022-02-01 23:51:40.33 Server      SQL Server detected 1 sockets with 2 cores per socket and 2 logical processors per socket, 2 total logical processors; using 2 logical processors based on SQL Server licensing. This is an informational message; no user action is required.
# 2022-02-01 23:51:40.33 Server      SQL Server is starting at normal priority base (=7). This is an informational message only. No user action is required.
# 2022-02-01 23:51:40.33 Server      Detected 5560 MB of RAM. This is an informational message; no user action is required.
# 2022-02-01 23:51:40.34 Server      Using conventional memory in the memory manager.
# 2022-02-01 23:51:40.34 Server      Page exclusion bitmap is enabled.
# 2022-02-01 23:51:40.36 Server      Buffer pool extension is not supported on Linux platform.
# 2022-02-01 23:51:40.36 Server      Buffer Pool: Allocating 1048576 bytes for 812348 hashPages.
# 2022-02-01 23:51:40.36 Server      Machine supports memory error recovery. SQL memory protection is enabled to recover from memory corruption.
# 2022-02-01 23:51:40.53 Server      Buffer pool extension is already disabled. No action is necessary.
# 2022-02-01 23:51:41.03 Server      Successfully initialized the TLS configuration. Allowed TLS protocol versions are ['1.0 1.1 1.2']. Allowed TLS ciphers are ['ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-ECDSA-AES256-SHA:ECDHE-ECDSA-AES128-SHA:AES256-GCM-SHA384:AES128-GCM-SHA256:AES256-SHA256:AES128-SHA256:AES256-SHA:AES128-SHA:!DHE-RSA-AES256-GCM-SHA384:!DHE-RSA-AES128-GCM-SHA256:!DHE-RSA-AES256-SHA:!DHE-RSA-AES128-SHA'].
# 2022-02-01 23:51:41.06 Server      Query Store settings initialized with enabled = 1, 
# 2022-02-01 23:51:41.08 Server      Node configuration: node 0: CPU mask: 0x0000000000000003:0 Active CPU mask: 0x0000000000000003:0. This message provides a description of the NUMA configuration for this computer. This is an informational message only. No user action is required.
# 2022-02-01 23:51:41.08 Server      The maximum number of dedicated administrator connections for this instance is '1'
# 2022-02-01 23:51:41.10 Server      Using dynamic lock allocation.  Initial allocation of 2500 Lock blocks and 5000 Lock Owner blocks per node.  This is an informational message only.  No user action is required.
# 2022-02-01 23:51:41.11 Server      In-Memory OLTP initialized on lowend machine.
# 2022-02-01 23:51:41.14 Server      [INFO] Created Extended Events session 'hkenginexesession'
# 2022-02-01 23:51:41.14 Server      Database Instant File Initialization: enabled. For security and performance considerations see the topic 'Database Instant File Initialization' in SQL Server Books Online. This is an informational message only. No user action is required.
# ForceFlush is enabled for this instance. 
# 2022-02-01 23:51:41.15 Server      Total Log Writer threads: 1. This is an informational message; no user action is required.
# 2022-02-01 23:51:41.16 Server      clflushopt is selected for pmem flush operation.
# 2022-02-01 23:51:41.16 Server      Software Usage Metrics is disabled.
# 2022-02-01 23:51:41.18 spid8s      [1]. Feature Status: PVS: 0. CTR: 0. ConcurrentPFSUpdate: 1.
# 2022-02-01 23:51:41.18 spid8s      Starting up database 'master'.
# ForceFlush feature is enabled for log durability.
# 2022-02-01 23:51:41.33 Server      CLR version v4.0.30319 loaded.
# 2022-02-01 23:51:41.49 spid8s      Converting database 'master' from version 897 to the current version 904.
# 2022-02-01 23:51:41.50 spid8s      Database 'master' running the upgrade step from version 897 to version 898.
# 2022-02-01 23:51:41.64 spid8s      Database 'master' running the upgrade step from version 898 to version 899.
# 2022-02-01 23:51:41.68 Server      Common language runtime (CLR) functionality initialized.
# 2022-02-01 23:51:41.72 spid8s      Database 'master' running the upgrade step from version 899 to version 900.
# 2022-02-01 23:51:41.82 spid8s      Database 'master' running the upgrade step from version 900 to version 901.
# 2022-02-01 23:51:41.86 spid8s      Database 'master' running the upgrade step from version 901 to version 902.
# 2022-02-01 23:51:41.91 spid8s      Database 'master' running the upgrade step from version 902 to version 903.
# 2022-02-01 23:51:41.96 spid8s      Database 'master' running the upgrade step from version 903 to version 904.
# 2022-02-01 23:51:42.28 spid8s      Resource governor reconfiguration succeeded.
# 2022-02-01 23:51:42.29 spid8s      SQL Server Audit is starting the audits. This is an informational message. No user action is required.
# 2022-02-01 23:51:42.30 spid8s      SQL Server Audit has started the audits. This is an informational message. No user action is required.
# 2022-02-01 23:51:42.37 spid8s      SQL Trace ID 1 was started by login "sa".
# 2022-02-01 23:51:42.42 spid23s     Password policy update was successful.
# 2022-02-01 23:51:42.48 spid23s     A self-generated certificate was successfully loaded for encryption.
# 2022-02-01 23:51:42.48 spid23s     Server is listening on [ 'any' <ipv6> 1433].
# 2022-02-01 23:51:42.48 spid23s     Server is listening on [ 'any' <ipv4> 1433].
# 2022-02-01 23:51:42.49 Server      Server is listening on [ ::1 <ipv6> 1434].
# 2022-02-01 23:51:42.49 spid8s      Server name is 'mssqlinst'. This is an informational message only. No user action is required.
# 2022-02-01 23:51:42.49 Server      Server is listening on [ 127.0.0.1 <ipv4> 1434].
# 2022-02-01 23:51:42.50 Server      Dedicated admin connection support was established for listening locally on port 1434.
# 2022-02-01 23:51:42.51 spid23s     Server is listening on [ ::1 <ipv6> 1431].
# 2022-02-01 23:51:42.51 spid23s     Server is listening on [ 127.0.0.1 <ipv4> 1431].
# 2022-02-01 23:51:42.52 spid25s     Always On: The availability replica manager is starting. This is an informational message only. No user action is required.
# 2022-02-01 23:51:42.52 spid11s     [32767]. Feature Status: PVS: 0. CTR: 0. ConcurrentPFSUpdate: 1.
# 2022-02-01 23:51:42.52 spid8s      [4]. Feature Status: PVS: 0. CTR: 0. ConcurrentPFSUpdate: 1.
# 2022-02-01 23:51:42.52 spid25s     Always On: The availability replica manager is waiting for the instance of SQL Server to allow client connections. This is an informational message only. No user action is required.
# 2022-02-01 23:51:42.53 spid11s     Starting up database 'mssqlsystemresource'.
# 2022-02-01 23:51:42.53 spid23s     SQL Server is now ready for client connections. This is an informational message; no user action is required.
# 2022-02-01 23:51:42.53 spid8s      Starting up database 'msdb'.
# 2022-02-01 23:51:42.54 spid11s     The resource database build version is 15.00.4198. This is an informational message only. No user action is required.
# 2022-02-01 23:51:42.56 spid11s     [3]. Feature Status: PVS: 0. CTR: 0. ConcurrentPFSUpdate: 1.
# 2022-02-01 23:51:42.56 spid11s     Starting up database 'model'.
# 2022-02-01 23:51:42.62 spid8s      The tail of the log for database msdb is being rewritten to match the new sector size of 4096 bytes.  3072 bytes at offset 50176 in file /var/opt/mssql/data/MSDBLog.ldf will be written.
# 2022-02-01 23:51:42.64 spid11s     The tail of the log for database model is being rewritten to match the new sector size of 4096 bytes.  512 bytes at offset 73216 in file /var/opt/mssql/data/modellog.ldf will be written.
# 2022-02-01 23:51:42.80 spid8s      Converting database 'msdb' from version 897 to the current version 904.
# 2022-02-01 23:51:42.80 spid8s      Database 'msdb' running the upgrade step from version 897 to version 898.
# 2022-02-01 23:51:42.80 spid11s     Converting database 'model' from version 897 to the current version 904.
# 2022-02-01 23:51:42.80 spid11s     Database 'model' running the upgrade step from version 897 to version 898.
# 2022-02-01 23:51:43.23 spid11s     Database 'model' running the upgrade step from version 898 to version 899.
# 2022-02-01 23:51:43.23 spid8s      Database 'msdb' running the upgrade step from version 898 to version 899.
# 2022-02-01 23:51:43.29 spid8s      Database 'msdb' running the upgrade step from version 899 to version 900.
# 2022-02-01 23:51:43.29 spid11s     Database 'model' running the upgrade step from version 899 to version 900.
# 2022-02-01 23:51:43.36 spid8s      Database 'msdb' running the upgrade step from version 900 to version 901.
# 2022-02-01 23:51:43.37 spid11s     Database 'model' running the upgrade step from version 900 to version 901.
# 2022-02-01 23:51:43.44 spid11s     Database 'model' running the upgrade step from version 901 to version 902.
# 2022-02-01 23:51:43.44 spid8s      Database 'msdb' running the upgrade step from version 901 to version 902.
# 2022-02-01 23:51:43.50 spid11s     Database 'model' running the upgrade step from version 902 to version 903.
# 2022-02-01 23:51:43.55 spid11s     Database 'model' running the upgrade step from version 903 to version 904.
# 2022-02-01 23:51:43.73 spid11s     Clearing tempdb database.
# 2022-02-01 23:51:44.03 spid11s     [2]. Feature Status: PVS: 0. CTR: 0. ConcurrentPFSUpdate: 1.
# 2022-02-01 23:51:44.03 spid11s     Starting up database 'tempdb'.
# 2022-02-01 23:51:44.12 spid11s     The tempdb database has 1 data file(s).
# 2022-02-01 23:51:44.23 spid25s     The Service Broker endpoint is in disabled or stopped state.
# 2022-02-01 23:51:44.23 spid25s     The Database Mirroring endpoint is in disabled or stopped state.
# 2022-02-01 23:51:44.24 spid25s     Service Broker manager has started.
# 2022-02-01 23:51:44.29 spid8s      Database 'msdb' running the upgrade step from version 902 to version 903.
# 2022-02-01 23:51:44.33 spid8s      Database 'msdb' running the upgrade step from version 903 to version 904.
# 2022-02-01 23:51:44.54 spid8s      Recovery is complete. This is an informational message only. No user action is required.
# 2022-02-01 23:51:44.56 spid24s     The default language (LCID 0) has been set for engine and full-text services.
# 2022-02-01 23:51:44.64 spid24s     The tempdb database has 2 data file(s).

az aks browse --resource-group sqltestrg --name sqlakscluster




