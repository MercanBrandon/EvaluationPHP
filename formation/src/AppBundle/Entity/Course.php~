<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * course
 *
 * @ORM\Table(name="course")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\courseRepository")
 */
class Course
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
     * @ORM\Column(name="Course", type="string", length=255, unique=true)
     */
    private $course;

    /**
     * @var string
     *
     * @ORM\Column(name="Slug", type="string", length=30, unique=true)
     */
    private $slug;


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
     * Set course
     *
     * @param string $course
     *
     * @return course
     */
    public function setCourse($course)
    {
        $this->course = $course;

        return $this;
    }

    /**
     * Get course
     *
     * @return string
     */
    public function getCourse()
    {
        return $this->course;
    }


    /**
     * Many Users have Many Groups.
     * @ORM\ManyToMany(targetEntity="Module", inversedBy="Course")
     * @ORM\JoinTable(name="courses_module")
     */
    private $modules;


    public function __construct() {
        $this->modules = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add module
     *
     * @param \AppBundle\Entity\Module $module
     *
     * @return Course
     */
    public function addModule(\AppBundle\Entity\Module $module)
    {
        $this->modules[] = $module;

        return $this;
    }

    /**
     * Remove module
     *
     * @param \AppBundle\Entity\Module $module
     */
    public function removeModule(\AppBundle\Entity\Module $module)
    {
        $this->modules->removeElement($module);
    }

    /**
     * Get modules
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getModules()
    {
        return $this->modules;
    }

    /**
     * Set slug
     *
     * @param string $slug
     *
     * @return Course
     */
    public function setSlug($slug)
    {
        $this->slug = $slug;

        return $this;
    }

    /**
     * Get slug
     *
     * @return string
     */
    public function getSlug()
    {
        return $this->slug;
    }
}
