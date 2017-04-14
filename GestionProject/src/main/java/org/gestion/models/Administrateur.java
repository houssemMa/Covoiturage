package org.gestion.models;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("Administrateur")
public class Administrateur extends Utilisateur {

}
