$vm = "games"

Add-VMGpuPartitionAdapter -VMName $vm
Set-VMGpuPartitionAdapter -VMName $vm -MinPartitionVRAM 80000000 -MaxPartitionVRAM 1000000000 -OptimalPartitionVRAM 1000000000 -MinPartitionEncode 80000000 -MaxPartitionEncode 18446744073709551615 -OptimalPartitionEncode 18446744073709551615 -MinPartitionDecode 80000000 -MaxPartitionDecode 1000000000 -OptimalPartitionDecode 1000000000  -MinPartitionCompute 80000000 -MaxPartitionCompute 1000000000 -OptimalPartitionCompute 1000000000

Set-VM -GuestControlledCacheTypes $true -VMName $vm
Set-VM -LowMemoryMappedIoSpace 1Gb -VMName $vm
Set-VM -HighMemoryMappedIoSpace 32GB -VMName $vm