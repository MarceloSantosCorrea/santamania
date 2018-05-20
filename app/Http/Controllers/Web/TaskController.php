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
        $data = Task::where(['status' => 1])->paginate();

        return view('pages.task.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $products = Product::all();

        return view('pages.task.create', compact('products'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(TaskRequest $request)
    {
        if (Task::create($request->all()))
            return redirect()
                ->route('web.task.index')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.task.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Task $production
     * @return \Illuminate\Http\Response
     */
    public function edit(Task $task)
    {
        $products = Product::all();

        return view('pages.task.edit', compact('products', 'task'));
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
        $task->fill($request->all());

        if ($task->save())
            return redirect()
                ->route('web.task.index')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.task.index')
            ->with('error', 'Erro ao salvar');
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
        $task->status = 0;

        if ($task->save())
            return redirect()
                ->route('home')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('home')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Task $task
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Task $task)
    {
        if ($task->delete())
            return redirect()
                ->route('web.task.index')
                ->with('success', 'Deletado com sucesso');

        return redirect()
            ->route('web.task.index')
            ->with('error', 'Erro ao deletar');
    }
}
