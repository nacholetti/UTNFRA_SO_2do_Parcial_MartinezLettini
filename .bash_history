ls -l
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
ls -l
lsblk
sudo apt update
sudo apt install lvm2
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
pwd
whoami
sudo usermod -a -G docker $(whoami)
id
exit
id
cd repogit
ls
git clone https://github.com/upszot/UTN-FRA_SO_Docker
     lsblk
ls -l
cd RTA_Examen_20241117
ls -l
vim Punto_A.sh
chmod +x Punto_A.sh
LS -L
ls
./Punto_A.sh
lsblk -f
free -h
swapon -s
df -h
ls -ld /var/lib/docker /work
sudo systemctl status docker
df -h
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_temp/lv_swap
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo lvs
sudo apt update
sudo apt install lvm2
./Punto_A.sh
lsblk
sudo lvs
sudo vgs
sudo pvs
sudo systemctl status lvm2-lvmetad
sudo apt update
sudo apt install lvm2
sudo pvs
sudo vgs
sudo lvs
sudo systemctl restart lvm2-lvscan
sudo pvdisplay
lsblk
ls
vim Punto_A.sh
sudo umount /var/lib/docker
sudo umount /work
sudo swapoff /dev/vg_temp/lv_swap
sudo vim /etc/fstab
/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0
/dev/vg_datos/lv_workareas /work ext4 defaults 0 0
/dev/vg_temp/lv_swap swap swap defaults 0 0
sudo lvremove /dev/vg_datos/lv_docker
sudo lvremove /dev/vg_datos/lv_workareas
sudo lvremove /dev/vg_temp/lv_swap
sudo vgremove vg_datos
sudo vgremove vg_temp
sudo pvremove /dev/sdc
sudo pvremove /dev/sdd
sudo pvremove /dev/sde
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo fdisk /dev/sde
ls
vim Punto_A.sh
sudo pvs
exit
ls
cd RTA_Examen_20241117
ls
./Punto_A.sh
sudo pvs
sudo lvs
lsblk -f
exit
ls -l
cd RTA_Examen_2024117 
cd RTA_Examen_20241117 
ls
clear
ls
/usr/local/bin/MartinezAltaUser-Groups.sh
sudo nano /usr/local/bin/MartinezAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/MartinezAltaUser-Groups.sh
ls -l /usr/local/bin/MartinezAltaUser-Groups.sh
sudo /usr/local/bin/MartinezAltaUser-Groups.sh ignaciomartinez /home/vagrant/repogit/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
grep -E "^($usuario_ref|Prog|Test|Supervisor)" /etc/passwd
cat /etc/group | grep -E "(desarrolladores|testers|supervisores)"
vim Punto_B.sh
sudo chmod +x Punto_B.sh
sudo ./Punto_B.sh
CD ..
cd ..
ls
cd UTN-FRA_SO_Docker
ls
cd ..
ls
ls -l <Path-Repo>/202406/docker
ls
ccd UTN-FRA_SO_Docker
cd UTN-FRA_SO_Docker
ls
ls Extras
ls comandos_Redes.ms
ls comandos_Redes.md
cat /etc/group | grep -E "(desarrolladores|testers|supervisores)"
grep -E "^($usuario_ref|Prog|Test|Supervisor)" /etc/passwd
cd..
cd ..
ls
git clone https://github.com/nacholetti/UTNFRA_SO_2do_Parcial_MartinezLettini.git
ls
tree
sudo apt install tree
tree
ls
cd UTN-FRA_So_Examenes
cd UTN-FRA_SO_Examenes
LS
ls
ls 202406
cd 202406
ls
tree
ls
cd docker
ls
vim index.html
cat index.html
docker login
docker build -t nacholetti/docker-repo:web1-martinez .
Login Succeeded
ignaciomartinez@VMPruebas:~/UTN-FRA_SO_Examenes/202406/docker$ docker build -t nacholetti/docker-repo:web1-martinez .
[+] Building 0.1s (1/1) FINISHED                                           docker:default
ERROR: failed to solve: failed to read dockerfile: open Dockerfile: no such file or directory
ignaciomartinez@VMPruebas:~/UTN-FRA_SO_Examenes/202406/docker$
docker build -t nacholetti/docker-repo:web1-martinez .
ls -l ~/UTN-FRA_SO_Examenes/202406/docker
nano Dockerfile
ls -l ~/UTN-FRA_SO_Examenes/202406/docker
docker build -t nacholetti/docker-repo:web1-martinez .
df -h
docker container prune
docker image prune -a
docker volume prune
docker build -t nacholetti/docker-repo:web1-martinez .
sudo systemctl stop docker
sudo mv /var/lib/docker /work/docker
sudo systemctl stop docker
sudo systemctl stop docker.socket
sudo docker stop $(sudo docker ps -q)
sudo mv /var/lib/docker /work/docker
sudo systemctl stop docker
sudo systemctl stop docker.socket
sudo mv /var/lib/docker /work/docker
sudo docker ps -a
sudo docker stop $(sudo docker ps -q)
sudo systemctl restart docker
docker login
docker tag web1-martinez nacholetti/web1-martinez:latest
docker push nacholetti/web1-martinez:latest
docker images
docker build -t web1-martinez .
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
ls
vim run.sh
chmod +x run.sh
ls
./run.sh
docker images
vim
vim run.sh
./run.sh
docker ps
ls
docker build -t nacholetti/web1-martinez:latest .
cd,,
cd ..
ls
cd ansible
sudo apt update
sudo apt install ansible -y
ls
ls roles
sudo apt list 
sudo apt list -installed
sudo apt list --installed
sudo apt list --installed ansible
sudo apt list --installed git
ssh-keygen -t ed25519
ls -l /home/vagrant/.ssh/
ls -l /home/ignaciomartinez/.ssh/
cat /home/ignaciomartinez/.ssh/id_ed25519.pub >> /home/ignaciomartinez/.ssh/authorized_keys
ls
mkdir -p ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/{alumno,equipo}
ls
tree
ls
mkdir -p /tmp/2do_parcial/{alumno,equipo}
ls
ls -l /tmp/2do_parcial
cd ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates
vim datos_alumno.txt.j2
vim datos_equipo.txt.j2
ls
ls roles
vim ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/vars/main.yml
vim ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
cd ~/UTN-FRA_SO_Examenes/202406/ansible
ansible-playbook -i inventory/hosts playbook.yml
vim ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
ansible-lint playbook.yml
sudo apt install ansible-lint
ansible-lint playbook.yml
vim /home/ignaciomartinez/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_alumno.txt.j2
chmod 644 /home/ignaciomartinez/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_alumno.txt.j2
ls
cd roles
ls
mkdir -p roles/2do_parcial/templates
vim roles/2do_parcial/templates/datos_alumno.txt.j2
vim roles/2do_parcial/templates/datos_equipo.txt.j2
:wq
mkdir -p roles/2do_parcial/vars
vim roles/2do_parcial/vars/main.yml
mkdir -p roles/2do_parcial/tasks
vim roles/2do_parcial/tasks/main.yml
ls
cd ..
ls
vim playboo.yml
ansible-playbook -i inventory/hosts playbook.yml
/home/ignaciomartinez/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
sud o/home/ignaciomartinez/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
sudo /home/ignaciomartinez/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
vim /home/ignaciomartinez/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
ansible-playbook -i inventory/hosts playbook.yml
sudo visudo
sudo usermod -aG 2PSupervisores ignaciomartinez
sudo ls
ansible-playbook -i inventory/hosts playbook.yml
sudo usermod -aG 2PSupervisores ignaciomartinez
sudo -u ignaciomartinez ls
ansible-playbook -i inventory/hosts playbook.yml
cd ..
ls
cd ..
ls
cd ..
ls
cd UTNFRA_SO_2do_Parcial_MartinezLettini
ls
cd
ls
cd..
ls
cd ..
ls
cd ignaciomartinez
ls
cd RTA_Examen_20241117
ls
cd ..
ls
cd UTNFRA_SO_2do_Parcial_MartinezLettini
