<?php
// src/Film/AdminBundle/Controller/AdminFilmController.php
namespace Film\AdminBundle\Controller;

use Film\BiblioBundle\Entity\Film;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Film\AdminBundle\Form\FilmType;
use Film\AdminBundle\Form\GenreType;
use Film\AdminBundle\Form\PersonneType;

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

    /////////////////////////////////////////////////////////////////////////////////
    /**
    * @Route("/ajout-genre", name="admin_genre_ajout")
    */
        public function addAction02(Request $request)
    {
        $genre = new Genre(); 
        $form_genre = $this->createForm(GenreType::class, $genre); 
        $form_genre->handleRequest($request); 
        if ($form_genre->isSubmitted() && $form_genre->isValid()) { 
            $genre = $form_genre->getData(); 
            $em_genre = $this->getDoctrine()->getManager(); 
            $em_genre->persist($genre);
            $em_genre->flush(); 
            return $this->redirectToRoute('admin_genre_liste');
        }

        return $this->render(
            'FilmAdminBundle:Genre:form.html.twig',
            ['form_genre' => $form_genre->createView()]
        );
    }

    /**
    * @Route("/liste-genre", name="admin_genre_liste")
    */
    public function listAction02()
    {
        $genres = $this->getDoctrine()->getRepository('FilmBiblioBundle:Genre')->findAll();

        return $this->render(
            'FilmAdminBundle:Genre:list.html.twig',
            ['genres' => $genres]
        );
    }

    /**
    * @Route("/modif-genre/{id}", name="admin_genre_modif", requirements={"id": "\d+"})
    */
    public function editAction02(Request $request, $id)
    {
        
        $genre = $this->getDoctrine()->getRepository('FilmBiblioBundle:Genre')->find($id);

        $form_genre = $this->createForm(GenreType::class, $genre); 

        
        $form_genre->handleRequest($request);

        if ($form_genre->isSubmitted() && $form_genre->isValid()) {
            $genre = $form_genre->getData();

           $em_genre = $this->getDoctrine()->getManager();
           $em_genre->persist($genre);
           $em_genre->flush();

             return $this->redirectToRoute('admin_genre_liste');
         }

        return $this->render(
            'FilmAdminBundle:Genre:form.html.twig',
            ['form_genre' => $form_genre->createView()]
        );
    }
    /**
    * @Route("/supprimer-genre/{id}", name="admin_genre_supprimer", requirements={"id": "\d+"})
    */
    public function deleteAction02($id)
    {
        
        $genre = $this->getDoctrine()->getRepository('FilmBiblioBundle:Genre')->find($id);

        $em_genre = $this->getDoctrine()->getManager(); 
        $em_genre->remove($genre);
        $em_genre->flush(); 

        return $this->redirectToRoute('admin_genre_liste'); 
    }

    /////////////////////////////////////////////////////////////////////////////////
    /**
    * @Route("/ajout-personne", name="admin_personne_ajout")
    */
        public function addAction03(Request $request)
    {
        $personne = new Personne(); 
        $form_personne = $this->createForm(FilmType::class, $personne); 
        $form_personne->handleRequest($request); 
        if ($form_personne->isSubmitted() && $form_personne->isValid()) { 
            $personne = $form_personne->getData(); 
            $em_personne = $this->getDoctrine()->getManager(); 
            $em_personne->persist($personne);
            $em_personne->flush(); 
            return $this->redirectToRoute('admin_personne_liste');
        }

        return $this->render(
            'FilmAdminBundle:Personne:form.html.twig',
            ['form_personne' => $form_personne->createView()]
        );
    }

    /**
    * @Route("/liste-personne", name="admin_personne_liste")
    */
    public function listAction03()
    {
        $personnes = $this->getDoctrine()->getRepository('FilmBiblioBundle:Personne')->findAll();

        return $this->render(
            'FilmAdminBundle:Personne:list.html.twig',
            ['personnes' => $personnes]
        );
    }

    /**
    * @Route("/modif-personne/{id}", name="admin_personne_modif", requirements={"id": "\d+"})
    */
    public function editAction03(Request $request, $id)
    {
        
        $personne = $this->getDoctrine()->getRepository('FilmBiblioBundle:Personne')->find($id);

        $form_personne = $this->createForm(PersonneType::class, $personne); 

        
        $form_personne->handleRequest($request);

        if ($form_personne->isSubmitted() && $form_personne->isValid()) {
            $personne = $form_personne->getData();

           $em_personne = $this->getDoctrine()->getManager();
           $em_personne->persist($personne);
           $em_personne->flush();

             return $this->redirectToRoute('admin_personne_liste');
         }

        return $this->render(
            'FilmAdminBundle:Personne:form.html.twig',
            ['form_personne' => $form_personne->createView()]
        );
    }
    /**
    * @Route("/supprimer-personne/{id}", name="admin_personne_supprimer", requirements={"id": "\d+"})
    */
    public function deleteAction03($id)
    {
        
        $personne = $this->getDoctrine()->getRepository('FilmBiblioBundle:Personne')->find($id);

        $em_personne = $this->getDoctrine()->getManager(); 
        $em_personne->remove($personne);
        $em_personne->flush(); 

        return $this->redirectToRoute('admin_personne_liste'); 
    }
}
