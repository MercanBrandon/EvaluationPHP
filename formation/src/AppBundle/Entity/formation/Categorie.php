<?php

namespace AppBundle\Entity\formation;

use Doctrine\ORM\Mapping as ORM;

/**
 * categorie
 *
 * @ORM\Table(name="categorie")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\formation\categorieRepository")
 */
class Categorie
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="categorie", type="string", length=255, unique=true)
     */
    private $categorie;


    /**
     * Many Users have Many Groups.
     * @ORM\ManyToMany(targetEntity="Livre", inversedBy="Categorie")
     * @ORM\JoinTable(name="categorie_livre")
     */
    private $livres;




    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set categorie
     *
     * @param string $categorie
     *
     * @return categorie
     */
    public function setCategorie($categorie)
    {
        $this->categorie = $categorie;

        return $this;
    }

    /**
     * Get categorie
     *
     * @return string
     */
    public function getCategorie()
    {
        return $this->categorie;
    }

    public function __construct() {
        $this->groups = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add livre
     *
     * @param \AppBundle\Entity\formation\Livre $livre
     *
     * @return Categorie
     */
    public function addLivre(\AppBundle\Entity\formation\Livre $livre)
    {
        $this->livres[] = $livre;

        return $this;
    }

    /**
     * Remove livre
     *
     * @param \AppBundle\Entity\formation\Livre $livre
     */
    public function removeLivre(\AppBundle\Entity\formation\Livre $livre)
    {
        $this->livres->removeElement($livre);
    }

    /**
     * Get livres
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getLivres()
    {
        return $this->livres;
    }
}
