# uubuctnr
Base for Big Data deployement

# context

Pour pouvoir déployer des solutions opensource dans le cadre d'une entreprise, on a besoin de prendre en compte certaines contraintes.

1. déploiement simplifié, y compris avec des configurations complexe générées à la volée
2. Déploiement de la sécurité: certificats, keytabs... imposent une gestion dynamique de ces élément
3. audit et supervision: on a besoin de contraintes très forte même avec de très nombreux conteneurs
4. Expérimentation: besoin de tester avec des environnement et/ou des version à venir, test de montée de version
5. multi-homing: gestion de plusieurs réseaux: réplications, clients, administratifs, etc.
6. compatible avec les solutions de déployement: les programmes *Mgr doivent être utilisés pour simplifier les déploiements
