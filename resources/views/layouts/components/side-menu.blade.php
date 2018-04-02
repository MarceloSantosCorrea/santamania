<div class="left side-menu">
    <div class="sidebar-inner slimscrollleft">
        <div id="sidebar-menu">
            <ul>
                <li class="text-muted menu-title"> Menu </li>
                <li class="has_sub">
                    <a href="{{ route('home') }}" class="waves-effect"><i class="ti-home"></i><span> Início </span></a>
                </li>
                <li class="has_sub">
                    <a href="/checklist" class="waves-effect"><i class="fa fa-check-circle"></i><span> Checklist </span></a>
                </li>
                <li class="has_sub">
                    <a href="/production" class="waves-effect"><i class="fa fa-rocket"></i><span> Produção </span></a>
                </li>
                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="glyphicon glyphicon-cog"></i>
                        <span> Configurações </span> <span class="menu-arrow"></span>
                    </a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('web.product.index') }}"> Produtos </a></li>
                        <li><a href="{{ route('web.product-category.index') }}"> Categorias de Produtos </a></li>
                        <li><a href="{{ route('web.units-measure.index') }}"> Unidades de Medida </a></li>
                        <li><a href="{{ route('web.warehouse.index') }}"> Local de Armazenamento </a></li>
                    </ul>
                </li>
                <li class="has_sub">
                    <a href="{{ route('web.user.index') }}" class="waves-effect">
                        <i class="fa fa-users"></i>
                        <span> Usuários </span>
                    </a>
                </li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>