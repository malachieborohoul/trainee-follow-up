 <!-- partial:partials/_sidebar.html -->
 <nav class="sidebar sidebar-offcanvas" id="sidebar">
   <ul class="nav">
     <li class="nav-item">
       <a class="nav-link" href="/">
         <i class="icon-grid menu-icon"></i>
         <span class="menu-title">Accueil</span>
       </a>
     </li>

     <?php if ($this->renderSection('role') == "1") : ?>
       <li class="nav-item">
         <a class="nav-link" href="/uploadFile">
           <i class="icon-paper menu-icon"></i>
           <span class="menu-title">Soumettre document</span>
         </a>
       </li>
     <?php else: ?>
      <!-- <li class="nav-item">
         <a class="nav-link" href="/discussion">
           <i class="icon-paper menu-icon"></i>
           <span class="menu-title">Espace discussion</span>
         </a>
       </li> -->

     <?php endif; ?>
    

   </ul>
 </nav>