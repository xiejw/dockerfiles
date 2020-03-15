## Overview

### Create and Connect Docker Network

Creates network and some nodes.

```
docker network create my-net

NODE_NAME=mpi_host_1
docker run --rm -ti --net my-net --hostname ${NODE_NAME} --name ${NODE_NAME} xiejw/mpi

NODE_NAME=mpi_host_2
docker run --rm -ti --net my-net --hostname ${NODE_NAME} --name ${NODE_NAME} xiejw/mpi
```

These creates two node ready for mpi.

### Compile, Distributed, and Start the Job

Start a master node.
```
docker run --rm -ti --net my-net --name master -v `pwd`:/workdir xiejw/mpi bash
```

Prepare the code `hello.c`
```
#include <stdio.h>
#include <mpi.h>

main(int argc, char **argv)
{
   int node;

   MPI_Init(&argc,&argv);
   MPI_Comm_rank(MPI_COMM_WORLD, &node);

   printf("Hello World from Node %d\n",node);

   MPI_Finalize();
}
```

Compile the code
```
mpicc hello.c
```

Distribute the code

```
scp a.out mpi_host_1:/tmp
scp a.out mpi_host_2:/tmp
```

Double check hostfile.
```
$ cat machinefile
mpi_host_1
mpi_host_2
```

Run it
```
mpiexec -f machinefile -n 2 /tmp/a.out
```
