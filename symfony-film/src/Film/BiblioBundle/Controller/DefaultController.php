<?php
// src/Devschool/BiblioBundle/Controller/DefaultController.php
namespace Film\BiblioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller
{
    /**
    * @Route("/", name="page_accueil")
    */
    public function indexAction()
    {
        return $this->render('FilmBiblioBundle:Default:index.html.twig');
    }
    /**
    * @Route("/films", name="page_films")
    */
    public function listAction()
    {
    	$films = $this->getDoctrine()->getRepository('FilmBiblioBundle:Film')->findAll();

    	$titre_de_la_page = 'Films de la bibliothèques';

        return $this->render(
        'FilmBiblioBundle:Film:list.html.twig',
        ['films' => $films, 'titre' => $titre_de_la_page]
    );
    }

     /**
    * @Route("/cinema", name="page_cine")
    */
    public function listAction02()
    {
    	$personnes = $this->getDoctrine()->getRepository('FilmBiblioBundle:Personne')->findAll();

    	$titre_de_la_page = 'Cinema';

        return $this->render(
        'FilmBiblioBundle:Personne:list.html.twig',
        ['personnes' => $personnes]
    );
    }

    /**
    * @Route("/film/{id}", requirements={"id": "\d+"}, name="page_film")
    */
    public function showAction($id)
    {
        $film = $this->getDoctrine()->getRepository('FilmBiblioBundle:Film')->find($id);

    return $this->render(
        'FilmBiblioBundle:Film:show.html.twig',
        ['film' => $film]
    );
    }
    /**
    * @Route("/personne/{id}", requirements={"id": "\d+"}, name="page_real")
    */
    public function showAction02($id)
    {
        $personne = $this->getDoctrine()->getRepository('FilmBiblioBundle:Personne')->find($id);

    return $this->render(
        'FilmBiblioBundle:Personne:show.html.twig',
        ['personne' => $personne]
    );
    }
}