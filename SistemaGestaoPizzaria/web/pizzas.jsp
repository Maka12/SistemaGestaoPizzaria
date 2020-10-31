<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String navLink = ""; %>
 <% session.setAttribute("navLink", "dashboard"); %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">


  <title>
    SIGP :: Pizzas
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- Nucleo Icons -->
  <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="assets/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
  <script src="https://kit.fontawesome.com/c8e252f3be.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>

<body class="">
  <div class="wrapper">
      <div class="sidebar">
    <!--
      Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red"
  -->
    <div class="sidebar-wrapper">
      <div class="logo">
        <a href="javascript:void(0)" class="simple-text logo-mini">
          SIGP - 
        </a>
        <a href="javascript:void(0)" class="simple-text logo-normal">
          Gestão de Pizzaria
        </a>
      </div>
      <ul class="nav">
        <li>
          <a href="dashboard.jsp">
            <i class="tim-icons icon-chart-pie-36"></i>
            <p>Dashboard</p>
          </a>
        </li>
        <li>
          <a href="pedidos.jsp">
            <i class="tim-icons icon-notes"></i>
            <p>Pedidos</p>
          </a>
        </li>
        <li>
            <a id="cardapioAnch" href="cardapios.jsp"  >
            <i class="tim-icons icon-single-copy-04"></i>
            <p>Cardapios</p>
          </a>
        </li>
        <li class="active ">
          <a id="pizzasAnch" href="pizzas.jsp">
            <i class="fas fa-pizza-slice"></i>
            <p>Pizzas</p>
          </a>
        </li>
        <li>
          <a href="clientes.jsp">
            <i class="fas fa-users"></i>
            <p>Clientes</p>
          </a>
        </li>
        <li>
          <a href="funcionarios.jsp">
            <i class="fas fa-user-friends"></i>
            <p>Funcionários</p>
          </a>
        </li>
        <!--li>
          <a href="utilizadores.jsp">
            <i class="fas fa-user-cog"></i>
            <p>Utilizadores</p>
          </a>
        </li-->
      </ul>
    </div>
  </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle d-inline">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="javascript:void(0)">Pizzas</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse" id="navigation">
            <ul class="navbar-nav ml-auto">
              <li class="search-bar input-group">
                <button class="btn btn-link" id="search-button" data-toggle="modal" data-target="#searchModal"><i class="tim-icons icon-zoom-split" ></i>
                  <span class="d-lg-none d-md-block">Search</span>
                </button>
              </li>
              <li class="dropdown nav-item">
                <a href="javascript:void(0)" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <div class="notification d-none d-lg-block d-xl-block"></div>
                  <i class="tim-icons icon-sound-wave"></i>
                  <p class="d-lg-none">
                    Notifications
                  </p>
                </a>
                <ul class="dropdown-menu dropdown-menu-right dropdown-navbar">
                  <li class="nav-link"><a href="#" class="nav-item dropdown-item">Mike John responded to your email</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">You have 5 more tasks</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Your friend Michael is in town</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Another notification</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Another one</a></li>
                </ul>
              </li>
              <li class="dropdown nav-item">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <div class="photo">
                    <img src="assets/img/anime3.png" alt="Profile Photo">
                  </div>
                  <b class="caret d-none d-lg-block d-xl-block"></b>
                  <p class="d-lg-none">
                    Log out
                  </p>
                </a>
                <ul class="dropdown-menu dropdown-navbar">
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Profile</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Settings</a></li>
                  <li class="dropdown-divider"></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Log out</a></li>
                </ul>
              </li>
              <li class="separator d-lg-none"></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="modal modal-search fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="tim-icons icon-simple-remove"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
      <!-- End Navbar -->
      <div id="content" class="content">
          <div class="row" style="padding: 5px!important;">
              <div class="col-md-12">
                    <button type="submit" class="btn btn-fill btn-primary" data-toggle="modal"  data-target="#adicionarModal" style="float: right;">Adicionar Pizzas</button>
              </div>
          </div>
                  <div class="row">
          <div class="col-md-12">
            <div class="card ">
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table tablesorter " id="">
                    <thead class=" text-primary">
                      <tr>
          <div class="col-md-12">
            <div class="card ">
                        <th>
                          Nome
                        </th>
                        <th>
                          Tipo
                        </th>
                        <th>
                          Ingredientes
                        </th>
                        <th class="text-center">
                          Preço
                        </th>
                        <th class="text-center" colspan="2">
                          Acção
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                            Portuguesa
                        </td>
                        <td>
                           Média
                        </td>
                        <td>
                          molho pomodoro, presunto, ovos, cebola,
                            mussarela e azeitonas pretas
                        </td>
                        <td class="text-center">
                          1236,738 Kz
                        </td>
                        <td class="text-center">
                          <button type="submit" class="btn btn-fill btn-primary btn-tiny" data-toggle="modal"  data-target="#editarModal"><i class="tim-icons icon-pencil"></i></button>
                           <button type="submit" class="btn btn-fill btn-primary btn-tiny" onclick="eliminarRegistro()"><i class="tim-icons icon-trash-simple"></i></button>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          Calabresa
                        </td>
                        <td>
                         Grande
                        </td>
                        <td>
                          molho pomodoro, calabresa artesanal levemente apimentada em fatias
                        </td>
                        <td class="text-center">
                          3223,789 Kz
                        </td>
                        <td class="text-center">
                          <button type="submit" class="btn btn-fill btn-primary btn-tiny" data-toggle="modal"  data-target="#editarModal"><i class="tim-icons icon-pencil"></i></button>
                           <button type="submit" class="btn btn-fill btn-primary btn-tiny" onclick="eliminarRegistro()"><i class="tim-icons icon-trash-simple"></i></button>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          Marguerita
                        </td>
                        <td>
                         Média
                        </td>
                        <td>
                            molho pomodoro, mussarela, tomate, alho frito e manjericão
                        </td>
                        <td class="text-center">
                          1256,142 Kz
                        </td>
                        <td class="text-center">
                          <button type="submit" class="btn btn-fill btn-primary btn-tiny" data-toggle="modal"  data-target="#editarModal"><i class="tim-icons icon-pencil"></i></button>
                           <button type="submit" class="btn btn-fill btn-primary btn-tiny" onclick="eliminarRegistro()"><i class="tim-icons icon-trash-simple"></i></button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
         
        </div>
      </div>
      <footer class="footer">
        <div class="container-fluid">

          <div class="copyright">
              &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>
            <a href="javascript:void(0)" target="_blank">Programação IV</a>
          </div>
        </div>
      </footer>
    </div>
  </div>
 
    <!-- Modal -->
<div class="modal fade" id="editarModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content card">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar Cardapio</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
                <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <form>
                  <div class="row">
                    <div class="col-md-12 px-md-1">
                      <div class="form-group">
                        <label>Nome</label>
                        <input type="text" class="form-control" placeholder="Nome do cliente">
                      </div>
                    </div>
                  </div>
                  <!--div class="row">
                     <div class="col-md-12 pl-md-1">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Data</label>
                        <input type="date" class="form-control">
                      </div>
                    </div>
                  </div-->
                  <div class="row">
                    <div class="col-md-12 px-md-1">
                      <div class="select-list">
  <div class="title">Pizzas</div>
  <div class="select-options">
    <div class="option"> 
        <input type="checkbox" name="vehicle" id="option1" value="" />
        <label for="option1">Platform</label>
    </div>
     <div class="option"> 
        <input type="checkbox" name="vehicle" id="option2" />
        <label for="option2">Device ID</label>
    </div>
        <div class="option"> 
        <input type="checkbox" name="vehicle" id="option3" />
        <label for="option3">Token</label>
    </div>
        <div class="option"> 
        <input type="checkbox" name="vehicle" id="option4" />
        <label for="option4">Option 1</label>
    </div>
  </div>
</div>
                    </div>
                  </div>
                </form>
              </div>
              <div class="card-footer">
                
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Adicionar</button
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
  </div>
</div>
    
        <!-- Modal -->
<div class="modal fade" id="adicionarModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content card">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Adicionar Cardapio</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
                <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <form>
                  <div class="row">
                    <div class="col-md-12 px-md-1">
                      <div class="form-group">
                        <label>Nome</label>
                        <input type="text" class="form-control" placeholder="Nome da pizza">
                      </div>
                    </div>
                  </div>
                  <!--div class="row">
                     <div class="col-md-12 pl-md-1">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Data</label>
                        <input type="date" class="form-control">
                      </div>
                    </div>
                  </div-->
                  <div class="row">
                    <div class="col-md-12 px-md-1">
                      <div class="select-list">
  <div class="title">Pizzas</div>
  <div class="select-options">
    <div class="option"> 
        <input type="checkbox" name="vehicle" id="option1" value="" />
        <label for="option1">Platform</label>
    </div>
     <div class="option"> 
        <input type="checkbox" name="vehicle" id="option2" />
        <label for="option2">Device ID</label>
    </div>
        <div class="option"> 
        <input type="checkbox" name="vehicle" id="option3" />
        <label for="option3">Token</label>
    </div>
        <div class="option"> 
        <input type="checkbox" name="vehicle" id="option4" />
        <label for="option4">Option 1</label>
    </div>
  </div>
</div>
                    </div>
                  </div>
                </form>
              </div>
              <div class="card-footer">
                
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Adicionar</button
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
  
  <!--   Core JS Files   -->
  <script src="assets/js/core/jquery.min.js"></script>
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap.min.js"></script>
  <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <!-- Place this tag in your head or just before your close body tag. -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Black Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/black-dashboard.min.js?v=1.0.0"></script><!-- Black Dashboard DEMO methods, don't include it in your project! -->
  <script src="assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');
        $navbar = $('.navbar');
        $main_panel = $('.main-panel');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');
        sidebar_mini_active = true;
        white_color = false;

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();



        $('.fixed-plugin a').click(function(event) {
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .background-color span').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data', new_color);
          }

          if ($main_panel.length != 0) {
            $main_panel.attr('data', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data', new_color);
          }
        });

        $('.switch-sidebar-mini input').on("switchChange.bootstrapSwitch", function() {
          var $btn = $(this);

          if (sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            sidebar_mini_active = false;
            blackDashboard.showSidebarMessage('Sidebar mini deactivated...');
          } else {
            $('body').addClass('sidebar-mini');
            sidebar_mini_active = true;
            blackDashboard.showSidebarMessage('Sidebar mini activated...');
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);
        });

        $('.switch-change-color input').on("switchChange.bootstrapSwitch", function() {
          var $btn = $(this);

          if (white_color == true) {

            $('body').addClass('change-background');
            setTimeout(function() {
              $('body').removeClass('change-background');
              $('body').removeClass('white-content');
            }, 900);
            white_color = false;
          } else {

            $('body').addClass('change-background');
            setTimeout(function() {
              $('body').removeClass('change-background');
              $('body').addClass('white-content');
            }, 900);

            white_color = true;
          }


        });

        $('.light-badge').click(function() {
          $('body').addClass('white-content');
        });

        $('.dark-badge').click(function() {
          $('body').removeClass('white-content');
        });
      });
    });
  </script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initDashboardPageCharts();

    });
  </script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
  <script>
    window.TrackJS &&
      TrackJS.install({
        token: "ee6fab19c5a04ac1a32a645abde4613a",
        application: "black-dashboard-free"
      });
  </script>
  
  <script type="text/javascript">
      (function($){
  $.fn.multiselect = function() {
    
    var selector = this;
    var options = $.extend({
          onChange: function() {}
      }, arguments[0] || {});
      
    activate();

    /////////

    function activate() {
           
      //events
      $(selector).find('.title').on('click', function(e) {
        $(this).parent().find('.select-options').toggle();
      });
      
      $(selector).find('input[type="checkbox"]').change(function(e){
        options.onChange.call(this);
      });
      
    }
  };
  
}(jQuery));

$(document).ready(function() {
  $('.select-list').multiselect({
    onChange: updateTable
  });
});
  
function updateTable() {
  var checkboxValue = $(this).val();
  var isChecked = $(this).is(':checked');
  
}
      function eliminarRegistro(){
          
          Swal.fire({
            title: 'Você tem certeza?',
            text: "Você não poderá reverter isso!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Sim, exclua!'
          }).then((result) => {
            if (result.isConfirmed) {
              Swal.fire(
                'Excluído!',
                'Seu registro foi deletado.',
                'success'
              )
            }
          })
          
      }
        $('#cardapioAnch').click(function() {
            <% session.removeAttribute("navLink"); %>
            <% session.setAttribute("navLink", "cardapios"); %>
           
              //  $("#content").html(" ");
            location.reload();
            var c = '<%=  session.getAttribute("navLink") %>';
            console.log(c)
        });
        $('#pizzasAnch').click(function() {
            <% session.removeAttribute("navLink"); %>
            <% session.setAttribute("navLink", "pizzas"); %>
            location.reload();
            var c = '<%=  session.getAttribute("navLink") %>';
            console.log(c)
        });
  </script>
</body>

</html>