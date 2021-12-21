<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class RegisterForm extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            "title"          =>    "required|min:2|max:50",
            "number_section" =>    "required",
            "number_street"  =>    ""         
            
		];
    }
}
