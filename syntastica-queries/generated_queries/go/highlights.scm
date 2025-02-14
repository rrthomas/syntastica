(ERROR) @error

(source_file
  (comment)+ @comment.documentation
  .
  (var_declaration)
)

(source_file
  (comment)+ @comment.documentation
  .
  (type_declaration)
)

(source_file
  (comment)+ @comment.documentation
  .
  (function_declaration)
)

(source_file
  (comment)+ @comment.documentation
  .
  (const_declaration)
)

(source_file
  .
  (comment)+ @comment.documentation
)

(comment) @comment

(field_declaration
  name: (field_identifier) @field
)

(keyed_element
  .
  (literal_element
    (identifier) @field
  )
)

[
  (nil)
  (iota)
] @constant.builtin

[
  (true)
  (false)
] @boolean

(imaginary_literal) @number

(float_literal) @float

(int_literal) @number

(escape_sequence) @string.escape

(rune_literal) @string

(raw_string_literal) @string

(interpreted_string_literal) @string

"]" @punctuation.bracket

"[" @punctuation.bracket

"}" @punctuation.bracket

"{" @punctuation.bracket

")" @punctuation.bracket

"(" @punctuation.bracket

";" @punctuation.delimiter

":" @punctuation.delimiter

"," @punctuation.delimiter

"." @punctuation.delimiter

(
  (identifier) @function.builtin
  (#match? @function.builtin "^(append|cap|clear|close|complex|copy|delete|imag|len|make|new|panic|print|println|real|recover)$")
)

(
  (type_identifier) @type.builtin
  (#match? @type.builtin "^(any|bool|byte|comparable|complex128|complex64|error|float32|float64|int|int16|int32|int64|int8|rune|string|uint|uint16|uint32|uint64|uint8|uintptr)$")
)

[
  "chan"
  "map"
] @type.builtin

[
  "else"
  "case"
  "switch"
  "if"
] @conditional

[
  "import"
  "package"
] @include

"for" @repeat

"go" @keyword.coroutine

"return" @keyword.return

"func" @keyword.function

[
  "break"
  "const"
  "continue"
  "default"
  "defer"
  "goto"
  "interface"
  "range"
  "select"
  "struct"
  "type"
  "var"
  "fallthrough"
] @keyword

[
  "--"
  "-"
  "-="
  ":="
  "!"
  "!="
  "..."
  "*"
  "*"
  "*="
  "/"
  "/="
  "&"
  "&&"
  "&="
  "&^"
  "&^="
  "%"
  "%="
  "^"
  "^="
  "+"
  "++"
  "+="
  "<-"
  "<"
  "<<"
  "<<="
  "<="
  "="
  "=="
  ">"
  ">="
  ">>"
  ">>="
  "|"
  "|="
  "||"
  "~"
] @operator

(
  (call_expression
    (identifier) @constructor
  )
  (#match? @constructor "^[mM]ake[\\s\\S]+$")
)

(
  (call_expression
    (identifier) @constructor
  )
  (#match? @constructor "^[nN]ew[\\s\\S]+$")
)

(method_spec
  name: (field_identifier) @method
)

(method_declaration
  name: (field_identifier) @method
)

(function_declaration
  name: (identifier) @function
)

(call_expression
  function: (selector_expression
    field: (field_identifier) @method.call
  )
)

(call_expression
  function: (identifier) @function.call
)

(const_spec
  name: (identifier) @constant
)

(
  (identifier) @constant
  (#eq? @constant "_")
)

(label_name) @label

(variadic_parameter_declaration
  (identifier) @parameter
)

(parameter_declaration
  (identifier) @parameter
)

(package_identifier) @namespace

(identifier) @variable

(field_identifier) @property

(type_spec
  name: (type_identifier) @type.definition
)

(type_identifier) @type
