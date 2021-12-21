            <?php
            
            return [
            
            /*
            |--------------------------------------------------------------------------
            | Validation Language Lines
            |--------------------------------------------------------------------------
            |
            | The following language lines contain the default error messages used by
            | the validator class. Some of these rules have multiple versions such
            | such as the size rules. Feel free to tweak each of these messages.
            |
            */
            
            "accepted"              => "<b>:attribute</b> debe ser aceptado.",
            "active_url"            => "<b>:attribute</b> no es una URL válida.",
            "after"                 => "<b>:attribute</b> debe ser una fecha posterior a :date.",
            "alpha"                 => "<b>:attribute</b> solo debe contener letras.",
            "alpha_dash"            => "<b>:attribute</b> solo debe contener letras, números y guiones.",
            "alpha_num"             => "<b>:attribute</b> solo debe contener letras y números.",
            "array"                 => "<b>:attribute</b> debe ser un conjunto.",
            "before"                => "<b>:attribute</b> debe ser una fecha anterior a :date.",
            "between"               => [
            "numeric"               => "<b>:attribute</b> tiene que estar entre <b>:min</b> - <b>:max</b>.",
            "file"                  => "<b>:attribute</b> debe pesar entre <b>:min</b> - <b>:max</b> kilobytes.",
            "string"                => "<b>:attribute</b> tiene que tener entre <b>:min</b> - <b>:max</b> caracteres.",
            "array"                 => "<b>:attribute</b> tiene que tener entre <b>:min</b> - <b>:max</b> ítems.",
            ],
            "boolean"               => "El campo <b>:attribute</b> debe tener un valor verdadero o falso.",
            "confirmed"             => "La confirmación de <b>:attribute</b> no coincide.",
            "date"                  => "<b>:attribute</b> no es una fecha válida.",
            "date_format"           => "<b>:attribute</b> no corresponde al formato :format.",
            "different"             => "<b>:attribute</b> y <b>:other</b> deben ser diferentes.",
            "digits"                => "<b>:attribute</b> debe tener :digits dígitos.",
            "digits_between"        => "<b>:attribute</b> debe tener entre <b>:min</b> y <b>:max</b> dígitos.",
            "email"                 => "No es un <b>:attribute</b> válido",
            "exists"                => "<b>:attribute</b> es inválido.",
            "filled"                => "El campo <b>:attribute</b> es obligatorio.",
            "image"                 => "<b>:attribute</b> debe ser una imagen.",
            "in"                    => "<b>:attribute</b> es inválido.",
            "integer"               => "El campo <b>:attribute</b> es obligatorio.",
            "ip"                    => "<b>:attribute</b> debe ser una dirección IP válida.",
            "max"                   => [
            "numeric"               => "<b>:attribute</b> no debe ser mayor a <b>:max</b> dígitos.",
            "file"                  => "<b>:attribute</b> no debe ser mayor que <b>:max</b> kilobytes.",
            "string"                => "<b>:attribute</b> no debe ser mayor que <b>:max</b> caracteres.",
            "array"                 => "<b>:attribute</b> no debe tener más de <b>:max</b> elementos.",
            ],
            "mimes"                 => "El <b>:attribute</b> debe ser un formato: <b>:values</b>.",
            "min"                   => [
            "numeric"               => "El tamaño de <b>:attribute</b> debe ser de al menos <b>:min</b>.",
            "file"                  => "El tamaño de <b>:attribute</b> debe ser de al menos <b>:min</b> kilobytes.",
            "string"                => "El <b><b>:attribute</b></b> debe contener al menos <b>:min</b> caracteres.",
            "array"                 => "<b>:attribute</b> debe tener al menos <b>:min</b> elementos.",
            ],
            "not_in"                => "<b>:attribute</b> es inválido.",
            "numeric"               => "<b>:attribute</b> debe ser numérico.",
            "regex"                 => "El formato de <b>:attribute</b> es inválido.",
            "required"              => "El campo <b>:attribute</b> es obligatorio.",
            "required_if"           => "El campo <b>:attribute</b> es obligatorio cuando <b>:other</b> es :value.",
            "required_with"         => "El campo <b>:attribute</b> es obligatorio cuando <b>:values</b> está presente.",
            "required_with_all"     => "El campo <b>:attribute</b> es obligatorio cuando <b>:values</b> está presente.",
            "required_without"      => "El campo <b>:attribute</b> es obligatorio cuando <b>:values</b> no está presente.",
            "required_without_all"  => "El campo <b>:attribute</b> es obligatorio cuando ninguno de <b>:values</b> estén presentes.",
            "same"                  => "<b>:attribute</b> y <b>:other</b> deben coincidir.",
            "size"                  => [
            "numeric"               => "El tamaño de <b>:attribute</b> debe ser <b>:size</b>.",
            "file"                  => "El tamaño de <b>:attribute</b> debe ser <b>:size</b> kilobytes.",
            "string"                => "<b>:attribute</b> debe contener <b>:size</b> caracteres.",
            "array"                 => "<b>:attribute</b> debe contener <b>:size</b> elementos.",
            ],
            "string"                => "The <b>:attribute</b> must be a string.",
            "timezone"              => "El <b>:attribute</b> debe ser una zona válida.",
            "unique"                => "<b>:attribute</b> ya ha sido registrado.",
            "url"                   => "El formato <b>:attribute</b> es inválido.",
            
            /*
            |--------------------------------------------------------------------------
            | Custom Validation Language Lines
            |--------------------------------------------------------------------------
            |
            | Here you may specify custom validation messages for attributes using the
            | convention "attribute.rule" to name the lines. This makes it quick to
            | specify a specific custom language line for a given attribute rule.
            |
            */
            
            'custom'                => [
            'attribute-name'        => [
            'rule-name'             => 'custom-message',
            ],
            ],
            "field_in_use"          => "El <b>:attribute</b> ya está en uso",
            
            /*
            |--------------------------------------------------------------------------
            | Custom Validation Attributes
            |--------------------------------------------------------------------------
            |
            | The following language lines are used to swap attribute place-holders
            | with something more reader friendly such as E-Mail Address instead
            | of "email". This simply helps us make messages a little cleaner.
            |
            */
            
            'attributes'            => [
            'name'                  => 'Nombre',
            'number'                => 'Orden de Embarrie',
            'username'              => 'usuario',
            'email'                 => 'correo electrónico',
            'first_name'            => 'nombre',
            'last_name'             => 'apellido',
            'surnames'              => 'Apellidos',
            'password'              => 'contraseña',
            'password_confirmation' => 'confirmación de la contraseña',
            'city'                  => 'ciudad',
            'country'               => 'país',
            'address'               => 'dirección',
            'phone'                 => 'teléfono',
            'mobile'                => 'Teléfono movil',
            'age'                   => 'edad',
            'sex'                   => 'sexo',
            'gender'                => 'género',
            'year'                  => 'año',
            'month'                 => 'mes',
            'day'                   => 'día',
            'hour'                  => 'hora',
            'minute'                => 'minuto',
            'second'                => 'segundo',
            'title'                 => 'Nombre',
            'body'                  => 'contenido',
            'description'           => 'descripción',
            'excerpt'               => 'extracto',
            'date'                  => 'fecha',
            'time'                  => 'hora',
            'subject'               => 'asunto',
            'message'               => 'mensaje',
            'required'              => 'Requerido',
            'town'                  => 'Nombre del Pueblo',
            'seccion_id'            => 'Sección',
            'pueblos'               => 'Pueblo',
            'secciones'             => 'Sección',
            'image'                 => 'Archivo',
            ],
            
            ];
