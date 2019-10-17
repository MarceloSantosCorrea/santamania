<div class="left side-menu">
    <div class="sidebar-inner slimscrollleft">
        <div id="sidebar-menu">
            <ul>
                <li class="text-muted menu-title"> {{ __('Menu') }} </li>
                @can('home')
                    <li>
                        <a href="{{ route('home') }}" class="waves-effect"><i class="ti-home"></i><span> {{ __('Início') }} </span></a>
                    </li>
                @endcan
                @can('list_checklists')
                    <li>
                        <a href="/checklist" class="waves-effect"><i class="fa fa-check-circle"></i><span> {{ __('Checklist') }} </span></a>
                    </li>
                @endcan
                @can('list_productions')
                    <li>
                        <a href="/production" class="waves-effect"><i class="fa fa-rocket"></i><span> {{ __('Produção') }} </span></a>
                    </li>
                @endcan
                @can('list_discards')
                    <li>
                        <a href="/discard" class="waves-effect"><i class="fa fa-trash"></i><span> {{ __('Descartes') }} </span></a>
                    </li>
                @endcan
                @can('list_tasks')
                    <li>
                        <a href="/task" class="waves-effect"><i class="fa fa-tasks"></i><span> {{ __('Tarefas') }} </span></a>
                    </li>
                @endcan

                @if(Gate::check('list_products') || Gate::check('list_product_categories')|| Gate::check('list_units_measures')
                || Gate::check('list_warehouses') || Gate::check('list_acl_roles') || Gate::check('list_users'))

                    <li class="has_sub">
                        <a href="javascript:void(0);" class="waves-effect"><i class="glyphicon glyphicon-cog"></i>
                            <span> {{ __('Configurações') }} </span> <span class="menu-arrow"></span>
                        </a>
                        <ul class="list-unstyled">
                            @can('list_products')
                                <li><a href="{{ route('web.product.index') }}"> {{ __('Produtos') }} </a></li>
                            @endcan
                            @can('list_product_categories')
                                <li>
                                    <a href="{{ route('web.product-category.index') }}"> {{ __('Categorias de Produtos') }} </a>
                                </li>
                            @endcan
                            <li><a href="{{ route('web.filters.index') }}"> {{ __('Filtros') }} </a></li>
                            @can('list_units_measures')
                                <li>
                                    <a href="{{ route('web.units-measure.index') }}"> {{ __('Unidades de Medida') }} </a>
                                </li>
                            @endcan
                            @can('list_warehouses')
                                <li>
                                    <a href="{{ route('web.warehouse.index') }}"> {{ __('Local de Armazenamento') }} </a>
                                </li>
                            @endcan
                            @can('list_users')
                                <li>
                                    <a href="{{ route('web.user.index') }}" class="waves-effect">
                                        <span> {{ __('Usuários') }} </span>
                                    </a>
                                </li>
                            @endcan
                            @can('list_acl_roles')
                                <li><a href="{{ route('web.acl.role.index') }}"> {{ __('Perfis') }} </a></li>
                            @endcan
                        </ul>
                    </li>
                @endif

                <li>
                    <a href="{{ route('web.report.index') }}" class="waves-effect">
                        <i class="ti-bar-chart"></i><span> {{ __('Gráficos') }} </span>
                    </a>
                </li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
