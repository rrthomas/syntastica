(function_signature
  name: (identifier) @local.definition
)

(formal_parameter
  name: (identifier) @local.definition
)

(initialized_variable_definition
  name: (identifier) @local.definition
)

(initialized_identifier
  (identifier) @local.definition
)

(static_final_declaration
  (identifier) @local.definition
)

(identifier) @local.reference

(class_definition
  body: (_) @local.scope
)

[
  (block)
  (if_statement)
  (for_statement)
  (while_statement)
  (try_statement)
  (catch_clause)
  (finally_clause)
] @local.scope
