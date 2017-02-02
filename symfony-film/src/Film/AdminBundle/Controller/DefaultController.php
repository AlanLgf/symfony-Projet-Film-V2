<?php

namespace Film\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DefaultController extends Controller
{
	/**
     * @Route("/admin", name="index_admin")
     */
    public function indexAdminAction()
    {
        return $this->render('FilmAdminBundle:Default:index.html.twig');
    }
}
