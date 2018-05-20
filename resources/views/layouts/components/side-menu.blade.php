<div class="left side-menu">
    <div class="sidebar-inner slimscrollleft">
        <div id="sidebar-menu">
            <ul>
                <li class="text-muted menu-title"> {{ __('Menu') }} </li>
                <li class="has_sub">
                    <a href="{{ route('home') }}" class="waves-effect"><i class="ti-home"></i><span> {{ __('Início') }} </span></a>
                </li>
                <li class="has_sub">
                    <a href="/checklist" class="waves-effect"><i class="fa fa-check-circle"></i><span> {{ __('Checklist') }} </span></a>
                </li>
                <li class="has_sub">
                    <a href="/production" class="waves-effect"><i class="fa fa-rocket"></i><span> {{ __('Produção') }} </span></a>
                </li>
                <li class="has_sub">
                    <a href="/task" class="waves-effect"><i class="fa fa-tasks"></i><span> {{ __('Tarefas') }} </span></a>
                </li>
                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="glyphicon glyphicon-cog"></i>
                        <span> {{ __('Configurações') }} </span> <span class="menu-arrow"></span>
                    </a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('web.product.index') }}"> {{ __('Produtos') }} </a></li>
                        <li><a href="{{ route('web.product-category.index') }}"> {{ __('Categorias de Produtos') }} </a>
                        </li>
                        <li><a href="{{ route('web.units-measure.index') }}"> {{ __('Unidades de Medida') }} </a></li>
                        <li><a href="{{ route('web.warehouse.index') }}"> {{ __('Local de Armazenamento') }} </a></li>
                    </ul>
                </li>
                <li class="has_sub">
                    <a href="{{ route('web.user.index') }}" class="waves-effect">
                        <i class="fa fa-users"></i>
                        <span> {{ __('Usuários') }} </span>
                    </a>
                </li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>