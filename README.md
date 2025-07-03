Cek pos aslinya: https://forum.level1techs.com/t/2-gamers-1-gpu-with-hyper-v-gpu-p-gpu-partitioning-finally-made-possible-with-hyperv/172234

Cek pos lanjutannya untuk windows 11: https://forum.level1techs.com/t/2-gamers-1-gpu-with-hyper-v-gpu-p-gpu-partitioning-finally-made-possible-with-hyperv/172234/137

Cek video ini untuk tutorial lengkapnya:

Step yang dibutuhkan:

1. Di host pergi ke C:\Windows\System32\DriverStore\FileRepository\
2. Copy folder dengan awalan nv_dispi.inf_amd64 (lanjutannya huruf random)
3. ke folder di VM C:\Windows\System32\HostDriverStore\FileRepository\  HostDriverStore & FileRepository BELUM ADA! buat foldernya secara MANUAL!
4. balik lagi ke C:\Windows\System32\ di host, copy file berawalan NV ![image](https://github.com/user-attachments/assets/7f94ded3-34e3-4f82-b4e6-832438944d09)
5. paste ke C:\Windows\System32\ di VM
6. abis copy file buka windows powershell RUN AS ADMINISTRATOR
7. ketik Get-VMPartitionableGpu di windows10 atau coba Get-VMHostPartitionableGpu di windows11
8. buka windows powershell ISE, run as administrator juga
9. download file vmpart.ps1 di github ini https://github.com/mgi24/HyperVGPUPartition/blob/main/vmpart.ps1
10. buka file itu tadi di powershell ise, edit $vm="games" ubah "games" ke nama VM hyperV ![image](https://github.com/user-attachments/assets/1defb02b-e5ef-4fec-be94-5fe9633094b3)
11. verifikasi nilainya samakan dengan hasil di langkah no.7 jika nilainya 0, ubah ke 80000000
12. di bagian bawah powershell ISE, ketik Set-ExecutionPolicy Unrestricted lalu enter, pilih YES TO ALL ![image](https://github.com/user-attachments/assets/908e5c06-ab93-4b6b-9ff4-e16e012b941c)
13. klik run di atas dan done!
14. tambahan install VB Cable biar bisa keluar suaranya https://vb-audio.com/Cable/
15. tambahan install parsec https://parsec.app/ untuk remote (agar bisa keluar suara juga)
16. done

Cara remove GPU partition klo mau reset:

Remove-VMGpuPartitionAdapter -VMName $vm
