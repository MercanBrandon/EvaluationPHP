<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Course;
use AppBundle\Entity\formation\Categorie;
use AppBundle\Entity\formation\Livre;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class BookstoreController extends Controller
{

    /**
     * @Route("/bookstore", name="bookstore")
     */
    public function IndexAction(){
        // doctrine
        $doctrine = $this -> getDoctrine();
        // get repository : SELECT
        $repository = $doctrine->getRepository(Categorie::class);
        $results = $repository->findAll();

        //exit(dump($results));
        return $this->render('bookstore/index.html.twig',[
            'results'=> $results
        ]);
    }

    /**
     * @route("/bookstore/category/{id}", name="bookstore.category")
     */
    public function CategoryAction($id){
        $doctrine = $this->getDoctrine();
        $repository = $doctrine->getRepository(Categorie::class);
        $results = $repository->findOneBy(array('id' => $id));

        return $this->render('bookstore/detail.html.twig',[
            'results'=> $results
        ]);
    }

    /**
     * @route("/bookstore/book/{id}", name="bookstore.book")
     */
    public function InfoAction($id){
        $doctrine = $this->getDoctrine();
        $repository = $doctrine->getRepository(Livre::class);
        $results = $repository -> findOneBy(array('id'=> $id));


        return $this->render('bookstore/livre.html.twig',[
                'results' => $results,
        ]);
    }


}