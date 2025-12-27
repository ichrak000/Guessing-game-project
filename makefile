FICHER_README = README.md
FICHER_SCRIPT = guessinggame.sh
NB_LIGNES := $(shell wc -l < $(FICHER_SCRIPT))


$(FICHER_README): $(FICHER_SCRIPT)
	@echo "# jeu de devinettes Bash" > $(FICHER_README)
	@echo "" >> $(FICHER_README)
	@echo "## Date de construction" >> $(FICHER_README)
	@echo "Ce fichier a ete généré automatiquement le : " >> $(FICHER_README)
	@date >> $(FICHER_README)
	@echo "## Statistiques du script" >> $(FICHER_README)
	@echo "Le script \`$(FICHER_SCRIPT)\` contient **$(NB_LIGNES)** lignes de code." >> $(FICHER_README)
	@echo "" >> $(FICHER_README)
	@echo "Pour jouer, executez simplement : \`bash $(FICHER_SCRIPT)\`" >>$(FICHER_README)

clean:
	rm -f $(FICHER_README)