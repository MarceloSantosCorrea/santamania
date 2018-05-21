<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\TaskRequest;
use App\Models\{
    Product, Task
};
use App\Http\Controllers\Controller;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (\Gate::allows('list_tasks')) {
            $data = Task::where(['status' => 1])->paginate();

            return view('pages.task.index', compact('data'));
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (\Gate::allows('create_tasks')) {
            $products = Product::all();

            return view('pages.task.create', compact('products'));
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(TaskRequest $request)
    {
        if (\Gate::allows('create_tasks')) {
            if (Task::create($request->all()))
                return redirect()
                    ->route('web.task.index')
                    ->with('success', 'Salvo com sucesso');

            return redirect()
                ->route('web.task.index')
                ->with('error', 'Erro ao salvar');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Task $production
     * @return \Illuminate\Http\Response
     */
    public function edit(Task $task)
    {
        if (\Gate::allows('edit_tasks')) {
            $products = Product::all();

            return view('pages.task.edit', compact('products', 'task'));
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param TaskRequest $request
     * @param Task $task
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(TaskRequest $request, Task $task)
    {
        if (\Gate::allows('edit_tasks')) {
            $task->fill($request->all());

            if ($task->save())
                return redirect()
                    ->route('web.task.index')
                    ->with('success', 'Salvo com sucesso');

            return redirect()
                ->route('web.task.index')
                ->with('error', 'Erro ao salvar');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param TaskRequest $request
     * @param Task $task
     * @return \Illuminate\Http\RedirectResponse
     */
    public function finalize(Task $task)
    {
        if (\Gate::allows('finalize_tasks')) {
            $task->status = 0;

            if ($task->save())
                return redirect()
                    ->route('home')
                    ->with('success', 'Salvo com sucesso');

            return redirect()
                ->route('home')
                ->with('error', 'Erro ao salvar');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Task $task
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Task $task)
    {
        if (\Gate::allows('delete_tasks')) {
            if ($task->delete())
                return redirect()
                    ->route('web.task.index')
                    ->with('success', 'Deletado com sucesso');

            return redirect()
                ->route('web.task.index')
                ->with('error', 'Erro ao deletar');
        }

        return view('pages.acl.unauthorized');
    }
}
