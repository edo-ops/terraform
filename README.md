Création d'une vm sur proxmox a partir d'un template en utilisant terraform le tout piloté par jenkins

installer proxmox, terraform et jenkins

faire un template d'une vm existante

créer un main.tf dans votre terraform a partir du fichier joint

créer un job jenkins (freestyle) et y entrer le shell du fichier joint

la création de vm se passe sans soucis mais un message d'erreure venant du template s'affiche a la fin du job.
