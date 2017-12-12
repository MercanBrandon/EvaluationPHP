<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Course;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class CoursesController extends Controller
{

    /**
     * @Route("/courses", name="courses")
     */
    public function IndexAction(){
        // doctrine
        $doctrine = $this -> getDoctrine();
        // get repository : SELECT
        $repository = $doctrine->getRepository(Course::class);
        $results = $repository->findAll();
        return $this->render('courses/index.html.twig',[
            'results'=> $results
        ]);
    }


    /**
     * @route("/course/{slug}", name="courses.detail")
     */
    public function moreAction($slug){
        $doctrine = $this->getDoctrine();
        $repository = $doctrine->getRepository(Course::class);
        $results = $repository ->findOneBy(array('slug' => $slug));
        //exit(dump($results));
        //renvoi d'informations (cible, information
        return $this->render('courses/more.html.twig',[
            'results' => $results
        ]);
    }

    /**
     * @route("/courses/query", name="courses.query")
     */
    public function  queryAction(){
        // doctrine
        $doctrine = $this->getDoctrine();

        //appel d'une méthode de la classe de dépot (repository)
        $result = $doctrine->getRepository(Course::class)->testQuery();
        exit(dump($result));
    }


    /*public function MoreAction(Request $request,$formation){
        $doctrine = $this -> getDoctrine();
        $repository = $doctrine->getRepository(Course::class);
        $results = $repository->findBy(array('name' => $formation));


        return $this->render('courses/more.html.twig',[
            'results'=> $results
        ]);
    }*/



}