<?php

namespace AppBundle\Entity\formation;

use Doctrine\ORM\Mapping as ORM;

/**
 * Livre
 *
 * @ORM\Table(name="livre")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\formation\LivreRepository")
 */
class Livre
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
     * @ORM\Column(name="titre", type="string", length=200)
     */
    private $titre;

    /**
     * @var string
     *
     * @ORM\Column(name="auteur", type="string", length=255)
     */
    private $auteur;


    /**
     * Many Groups have Many Users.
     * @ORM\ManyToMany(targetEntity="Categorie", mappedBy="Livre")
     */
    private $categorie;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text")
     */
    private $description;

    /**
     * @var string
     *
     * @ORM\Column(name="image", type="string", length=255)
     */
    private $image;

    /**
     * @var string
     *
     * @ORM\Column(name="date_de_publication", type="string", length=255)
     */
    private $dateDePublication;

    /**
     * Many Features have One Product.
     * @ORM\ManyToOne(targetEntity="Categorie", inversedBy="Livre")
     * @ORM\JoinColumn(name="categorie", referencedColumnName="id")
     */
    private $product;


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
     * Set titre
     *
     * @param string $titre
     *
     * @return Livre
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get titre
     *
     * @return string
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Set auteur
     *
     * @param string $auteur
     *
     * @return Livre
     */
    public function setAuteur($auteur)
    {
        $this->auteur = $auteur;

        return $this;
    }

    /**
     * Get auteur
     *
     * @return string
     */
    public function getAuteur()
    {
        return $this->auteur;
    }

    /**
     * Set categorie
     *
     * @param string $categorie
     *
     * @return Livre
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

    /**
     * Set description
     *
     * @param string $description
     *
     * @return Livre
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set image
     *
     * @param string $image
     *
     * @return Livre
     */
    public function setImage($image)
    {
        $this->image = $image;

        return $this;
    }

    /**
     * Get image
     *
     * @return string
     */
    public function getImage()
    {
        return $this->image;
    }

    /**
     * Set dateDePublication
     *
     * @param string $dateDePublication
     *
     * @return Livre
     */
    public function setDateDePublication($dateDePublication)
    {
        $this->dateDePublication = $dateDePublication;

        return $this;
    }

    /**
     * Get dateDePublication
     *
     * @return string
     */
    public function getDateDePublication()
    {
        return $this->dateDePublication;
    }

    /**
     * Set product
     *
     * @param \AppBundle\Entity\formation\Categorie $product
     *
     * @return Livre
     */
    public function setProduct(\AppBundle\Entity\formation\Categorie $product = null)
    {
        $this->product = $product;

        return $this;
    }

    /**
     * Get product
     *
     * @return \AppBundle\Entity\formation\Categorie
     */
    public function getProduct()
    {
        return $this->product;
    }


    public function __construct()
    {
        $this->users = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add categorie
     *
     * @param \AppBundle\Entity\formation\Categorie $categorie
     *
     * @return Livre
     */
    public function addCategorie(\AppBundle\Entity\formation\Categorie $categorie)
    {
        $this->categorie[] = $categorie;

        return $this;
    }

    /**
     * Remove categorie
     *
     * @param \AppBundle\Entity\formation\Categorie $categorie
     */
    public function removeCategorie(\AppBundle\Entity\formation\Categorie $categorie)
    {
        $this->categorie->removeElement($categorie);
    }
}
