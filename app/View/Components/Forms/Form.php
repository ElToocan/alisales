<?php

namespace App\View\Components\Forms;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use mysql_xdevapi\Exception;

class Form extends Component
{

    private string $method;

    private string $action;

    private string $title;

    /**
     * @param string $method
     * @param string $action
     * @param string $title
     */
    public function __construct(string $method, string $action, string $title)
    {
        if ($method === null){
            if($action === null){
                if($title === null){
                    throw new Exception('to few arguments required(method, action, title)');
                }
            }
        }else{
            $this->method = $method;
            $this->action = $action;
            $this->title = $title;
        }

    }


    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        $title = $this->title;
        $method = $this->method;
        $action = $this->action;

        return view('components.forms.form', compact('title', 'method', 'action'));
    }
}
