<?php
// src/Film/AdminBundle/Controller/AdminFilmController.php
namespace Film\AdminBundle\Controller;

use Film\BiblioBundle\Entity\Film;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Film\AdminBundle\Form\FilmType;

/**
* @Route("/admin/films")
*/
class AdminFilmController extends Controller
{
    /**
    * @Route("/ajout", name="admin_film_ajout")
    */
    public function addAction(Request $request)
    {
        $film = new Film(); 
        $form_film = $this->createForm(FilmType::class, $film); 
        $form_film->handleRequest($request); 
        if ($form_film->isSubmitted() && $form_film->isValid()) { 
            $film = $form_film->getData(); 
            $em_film = $this->getDoctrine()->getManager(); 
            $em_film->persist($film);
            $em_film->flush(); 
            return $this->redirectToRoute('admin_film_liste');
        }

        return $this->render(
            'FilmAdminBundle:Film:form.html.twig',
            ['form_film' => $form_film->createView()]
        );
    }

    /**
    * @Route("/liste", name="admin_film_liste")
    */
    public function listAction()
    {
        $films = $this->getDoctrine()->getRepository('FilmBiblioBundle:Film')->findAll();

        return $this->render(
            'FilmAdminBundle:Film:list.html.twig',
            ['films' => $films]
        );
    }

    /**
    * @Route("/modif/{id}", name="admin_film_modif", requirements={"id": "\d+"})
    */
    public function editAction(Request $request, $id)
    {
        
        $film = $this->getDoctrine()->getRepository('FilmBiblioBundle:Film')->find($id);

        $form_film = $this->createForm(FilmType::class, $film); 

        
        $form_film->handleRequest($request);

        if ($form_film->isSubmitted() && $form_film->isValid()) {
            $film = $form_film->getData();

           $em = $this->getDoctrine()->getManager();
           $em->persist($film);
           $em->flush();

             return $this->redirectToRoute('admin_film_liste');
         }

        return $this->render(
            'FilmAdminBundle:Film:form.html.twig',
            ['form_film' => $form_film->createView()]
        );
    }
    /**
    * @Route("/supprimer/{id}", name="admin_film_supprimer", requirements={"id": "\d+"})
    */
    public function deleteAction($id)
    {
        
        $film = $this->getDoctrine()->getRepository('FilmBiblioBundle:Film')->find($id);

        $em = $this->getDoctrine()->getManager(); 
        $em->remove($film);
        $em->flush(); 

        return $this->redirectToRoute('admin_film_liste'); 
    }
}
