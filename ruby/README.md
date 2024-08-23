# composio-ruby<a id="composio-ruby"></a>

Generated with `routing-controllers-openapi`


## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Installation](#installation)
- [Getting Started](#getting-started)
- [Raw HTTP Response](#raw-http-response)
- [Reference](#reference)
  * [`composioruby.api_keys.delete_api_key`](#composiorubyapi_keysdelete_api_key)
  * [`composioruby.api_keys.generate_api_key`](#composiorubyapi_keysgenerate_api_key)
  * [`composioruby.api_keys.list_api_keys`](#composiorubyapi_keyslist_api_keys)
  * [`composioruby.actions.execute_action_proxy`](#composiorubyactionsexecute_action_proxy)
  * [`composioruby.actions.execute_action_proxy_v2`](#composiorubyactionsexecute_action_proxy_v2)
  * [`composioruby.actions.execute_action_v1`](#composiorubyactionsexecute_action_v1)
  * [`composioruby.actions.execute_action_v2`](#composiorubyactionsexecute_action_v2)
  * [`composioruby.actions.get_action_v1`](#composiorubyactionsget_action_v1)
  * [`composioruby.actions.get_action_v2`](#composiorubyactionsget_action_v2)
  * [`composioruby.actions.list_actions_minimal_v2`](#composiorubyactionslist_actions_minimal_v2)
  * [`composioruby.actions.list_actions_v1`](#composiorubyactionslist_actions_v1)
  * [`composioruby.actions.list_actions_v2`](#composiorubyactionslist_actions_v2)
  * [`composioruby.admin.get_sentry_dns`](#composiorubyadminget_sentry_dns)
  * [`composioruby.apps.get_app`](#composiorubyappsget_app)
  * [`composioruby.apps.get_apps`](#composiorubyappsget_apps)
  * [`composioruby.apps.get_open_api_specs`](#composiorubyappsget_open_api_specs)
  * [`composioruby.auth.delete_client`](#composiorubyauthdelete_client)
  * [`composioruby.auth.get_user_info`](#composiorubyauthget_user_info)
  * [`composioruby.auth.google_login`](#composiorubyauthgoogle_login)
  * [`composioruby.auth.identify_client`](#composiorubyauthidentify_client)
  * [`composioruby.auth.logout`](#composiorubyauthlogout)
  * [`composioruby.auth.pusher_user_auth`](#composiorubyauthpusher_user_auth)
  * [`composioruby.auth.send_magic_link`](#composiorubyauthsend_magic_link)
  * [`composioruby.auth.track_client`](#composiorubyauthtrack_client)
  * [`composioruby.auth.verify_magic_link`](#composiorubyauthverify_magic_link)
  * [`composioruby.cli.generate_cli_session`](#composiorubycligenerate_cli_session)
  * [`composioruby.cli.get_cli_code`](#composiorubycliget_cli_code)
  * [`composioruby.cli.verify_cli_code`](#composiorubycliverify_cli_code)
  * [`composioruby.connections.delete_connection`](#composiorubyconnectionsdelete_connection)
  * [`composioruby.connections.disable_connection`](#composiorubyconnectionsdisable_connection)
  * [`composioruby.connections.enable_connection`](#composiorubyconnectionsenable_connection)
  * [`composioruby.connections.get_connection`](#composiorubyconnectionsget_connection)
  * [`composioruby.connections.get_connections`](#composiorubyconnectionsget_connections)
  * [`composioruby.connections.initiate_connection`](#composiorubyconnectionsinitiate_connection)
  * [`composioruby.integrations.create_connector`](#composiorubyintegrationscreate_connector)
  * [`composioruby.integrations.delete_connector`](#composiorubyintegrationsdelete_connector)
  * [`composioruby.integrations.get_connector_info`](#composiorubyintegrationsget_connector_info)
  * [`composioruby.integrations.list_global_connectors`](#composiorubyintegrationslist_global_connectors)
  * [`composioruby.integrations.patch_connector`](#composiorubyintegrationspatch_connector)
  * [`composioruby.integrations.patch_post_connector`](#composiorubyintegrationspatch_post_connector)
  * [`composioruby.login.handle_o_auth2_login`](#composiorubyloginhandle_o_auth2_login)
  * [`composioruby.login.verify_o_auth2_login`](#composiorubyloginverify_o_auth2_login)
  * [`composioruby.logs.get_logs`](#composiorubylogsget_logs)
  * [`composioruby.metadata.get_metadata`](#composiorubymetadataget_metadata)
  * [`composioruby.metadata.get_toggle_info`](#composiorubymetadataget_toggle_info)
  * [`composioruby.metadata.toggle_trigger_state`](#composiorubymetadatatoggle_trigger_state)
  * [`composioruby.metadata.update_metadata`](#composiorubymetadataupdate_metadata)
  * [`composioruby.team.invite_member`](#composiorubyteaminvite_member)
  * [`composioruby.team.list_members`](#composiorubyteamlist_members)
  * [`composioruby.team.remove_member`](#composiorubyteamremove_member)
  * [`composioruby.triggers.callback_url`](#composiorubytriggerscallback_url)
  * [`composioruby.triggers.delete_trigger`](#composiorubytriggersdelete_trigger)
  * [`composioruby.triggers.disable_trigger`](#composiorubytriggersdisable_trigger)
  * [`composioruby.triggers.enable_trigger`](#composiorubytriggersenable_trigger)
  * [`composioruby.triggers.get_active_triggers`](#composiorubytriggersget_active_triggers)
  * [`composioruby.triggers.get_logs`](#composiorubytriggersget_logs)
  * [`composioruby.triggers.get_trigger`](#composiorubytriggersget_trigger)
  * [`composioruby.triggers.get_trigger_info_v2`](#composiorubytriggersget_trigger_info_v2)
  * [`composioruby.triggers.get_webhook_url`](#composiorubytriggersget_webhook_url)
  * [`composioruby.triggers.handle_pusher_events`](#composiorubytriggershandle_pusher_events)
  * [`composioruby.triggers.handle_trigger`](#composiorubytriggershandle_trigger)
  * [`composioruby.triggers.list_triggers`](#composiorubytriggerslist_triggers)
  * [`composioruby.triggers.set_callback_url`](#composiorubytriggersset_callback_url)
  * [`composioruby.triggers.switch_post_trigger_instance_status`](#composiorubytriggersswitch_post_trigger_instance_status)
  * [`composioruby.triggers.switch_trigger_instance_status`](#composiorubytriggersswitch_trigger_instance_status)

<!-- tocstop -->

## Installation<a id="installation"></a>

Add to Gemfile:

```ruby
gem 'composio-ruby', '~> 1.0.0'
```

## Getting Started<a id="getting-started"></a>

```ruby
require 'composio-ruby'
configuration = ComposioRuby::Configuration.new
composioruby = composio-ruby::Client.new(configuration)
composioruby.api_keys.delete_api_key(
  x_api_key: "x-api-key_example",
  id: "'+j>6",
)
```

## Raw HTTP Response<a id="raw-http-response"></a>

To access the raw HTTP response, suffix any method with `_with_http_info`.

```ruby
composioruby.api_keys.delete_api_key_with_http_info(
  x_api_key: "x-api-key_example",
  id: "'+j>6",
)
p.result.status_code # [Integer] HTTP status code
p.result.headers # [Hash] HTTP headers
p.result.response # [Faraday::Response] Raw HTTP response
```

## Reference<a id="reference"></a>


### `composioruby.api_keys.delete_api_key`<a id="composiorubyapi_keysdelete_api_key"></a>

Delete api key

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.api_keys.delete_api_key(
  x_api_key: "x-api-key_example",
  id: "'+j>6",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### id: `String`<a id="id-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/api_keys/{id}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.api_keys.generate_api_key`<a id="composiorubyapi_keysgenerate_api_key"></a>

Generate api key

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.api_keys.generate_api_key(
  name: "string_example",
  x_api_key: "x-api-key_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### name: `String`<a id="name-string"></a>
The name of the API key to be generated

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[APIKeyResDTO](./lib/composio-ruby/models/api_key_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/api_keys` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.api_keys.list_api_keys`<a id="composiorubyapi_keyslist_api_keys"></a>

List api keys

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.api_keys.list_api_keys(
  x_api_key: "x-api-key_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[APIKeyResDTO](./lib/composio-ruby/models/api_key_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/api_keys` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.actions.execute_action_proxy`<a id="composiorubyactionsexecute_action_proxy"></a>

Execute action proxy

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.actions.execute_action_proxy(
  x_api_key: "x-api-key_example",
  endpoint: "endpoint_example",
  connected_account_id: "connectedAccountId_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### endpoint: `String`<a id="endpoint-string"></a>
##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ExecuteActionResDTO](./lib/composio-ruby/models/execute_action_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/actions/proxy` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.actions.execute_action_proxy_v2`<a id="composiorubyactionsexecute_action_proxy_v2"></a>

Execute an action with direct auth.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.actions.execute_action_proxy_v2(
  x_api_key: "x-api-key_example",
  endpoint: "endpoint_example",
  connected_account_id: "connectedAccountId_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### endpoint: `String`<a id="endpoint-string"></a>
##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionExecutionResDto](./lib/composio-ruby/models/action_execution_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/actions/proxy` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.actions.execute_action_v1`<a id="composiorubyactionsexecute_action_v1"></a>

Execute action

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.actions.execute_action_v1(
  x_api_key: "x-api-key_example",
  action_id: "'+j>6",
  connected_account_id: "string_example",
  app_name: "string_example",
  entity_id: "string_example",
  endpoint: "string_example",
  input: {},
  text: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### action_id: `String`<a id="action_id-string"></a>
##### connectedAccountId: `String`<a id="connectedaccountid-string"></a>
##### appName: `String`<a id="appname-string"></a>
##### entityId: `String`<a id="entityid-string"></a>
##### endpoint: `String`<a id="endpoint-string"></a>
##### input: `Object`<a id="input-object"></a>
##### text: `String`<a id="text-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionExecutionResDto](./lib/composio-ruby/models/action_execution_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/actions/{actionId}/execute` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.actions.execute_action_v2`<a id="composiorubyactionsexecute_action_v2"></a>

Execute an action. Support both connected account and no auth auth.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.actions.execute_action_v2(
  x_api_key: "x-api-key_example",
  action_id: "'+j>6",
  connected_account_id: "string_example",
  app_name: "string_example",
  entity_id: "string_example",
  endpoint: "string_example",
  input: {},
  text: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### action_id: `String`<a id="action_id-string"></a>
##### connectedAccountId: `String`<a id="connectedaccountid-string"></a>
##### appName: `String`<a id="appname-string"></a>
##### entityId: `String`<a id="entityid-string"></a>
##### endpoint: `String`<a id="endpoint-string"></a>
##### input: `Object`<a id="input-object"></a>
##### text: `String`<a id="text-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionExecutionResDto](./lib/composio-ruby/models/action_execution_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/actions/{actionId}/execute` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.actions.get_action_v1`<a id="composiorubyactionsget_action_v1"></a>

Get action

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.actions.get_action_v1(
  x_api_key: "x-api-key_example",
  action_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### action_id: `String`<a id="action_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionDetails](./lib/composio-ruby/models/action_details.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/actions/{actionId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.actions.get_action_v2`<a id="composiorubyactionsget_action_v2"></a>

Get action details

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.actions.get_action_v2(
  x_api_key: "x-api-key_example",
  action_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### action_id: `String`<a id="action_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionDetails](./lib/composio-ruby/models/action_details.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/actions/{actionId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.actions.list_actions_minimal_v2`<a id="composiorubyactionslist_actions_minimal_v2"></a>

Retrieve a list of all actions based on query parameters.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.actions.list_actions_minimal_v2(
  x_api_key: "x-api-key_example",
  app_names: "string_example",
  use_case: "string_example",
  show_enabled_only: true,
  limit: 3.14,
  apps: "string_example",
  actions: "string_example",
  tags: "string_example",
  usecase_limit: 3.14,
  filter_important_actions: true,
  show_all: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### app_names: `String`<a id="app_names-string"></a>
##### use_case: `String`<a id="use_case-string"></a>
##### show_enabled_only: `Boolean`<a id="show_enabled_only-boolean"></a>
##### limit: `Float`<a id="limit-float"></a>
##### apps: `String`<a id="apps-string"></a>
##### actions: `String`<a id="actions-string"></a>
##### tags: `String`<a id="tags-string"></a>
##### usecase_limit: `Float`<a id="usecase_limit-float"></a>
##### filter_important_actions: `Boolean`<a id="filter_important_actions-boolean"></a>
##### show_all: `Boolean`<a id="show_all-boolean"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionsListResponseDTO](./lib/composio-ruby/models/actions_list_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/actions/list/all` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.actions.list_actions_v1`<a id="composiorubyactionslist_actions_v1"></a>

List actions

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.actions.list_actions_v1(
  x_api_key: "x-api-key_example",
  app_names: "string_example",
  use_case: "string_example",
  show_enabled_only: true,
  limit: 3.14,
  apps: "string_example",
  actions: "string_example",
  tags: "string_example",
  usecase_limit: 3.14,
  filter_important_actions: true,
  show_all: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### app_names: `String`<a id="app_names-string"></a>
##### use_case: `String`<a id="use_case-string"></a>
##### show_enabled_only: `Boolean`<a id="show_enabled_only-boolean"></a>
##### limit: `Float`<a id="limit-float"></a>
##### apps: `String`<a id="apps-string"></a>
##### actions: `String`<a id="actions-string"></a>
##### tags: `String`<a id="tags-string"></a>
##### usecase_limit: `Float`<a id="usecase_limit-float"></a>
##### filter_important_actions: `Boolean`<a id="filter_important_actions-boolean"></a>
##### show_all: `Boolean`<a id="show_all-boolean"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionsListResponseDTO](./lib/composio-ruby/models/actions_list_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/actions` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.actions.list_actions_v2`<a id="composiorubyactionslist_actions_v2"></a>

Retrieve a list of all actions based on query parameters.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.actions.list_actions_v2(
  x_api_key: "x-api-key_example",
  app_names: "string_example",
  use_case: "string_example",
  show_enabled_only: true,
  limit: 3.14,
  apps: "string_example",
  actions: "string_example",
  tags: "string_example",
  usecase_limit: 3.14,
  filter_important_actions: true,
  show_all: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### app_names: `String`<a id="app_names-string"></a>
##### use_case: `String`<a id="use_case-string"></a>
##### show_enabled_only: `Boolean`<a id="show_enabled_only-boolean"></a>
##### limit: `Float`<a id="limit-float"></a>
##### apps: `String`<a id="apps-string"></a>
##### actions: `String`<a id="actions-string"></a>
##### tags: `String`<a id="tags-string"></a>
##### usecase_limit: `Float`<a id="usecase_limit-float"></a>
##### filter_important_actions: `Boolean`<a id="filter_important_actions-boolean"></a>
##### show_all: `Boolean`<a id="show_all-boolean"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionsListResponseDTO](./lib/composio-ruby/models/actions_list_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/actions` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.admin.get_sentry_dns`<a id="composiorubyadminget_sentry_dns"></a>

Sentry dns

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.admin.get_sentry_dns(
  x_api_key: "x-api-key_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/cli/sentry-dns` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.apps.get_app`<a id="composiorubyappsget_app"></a>

Get app details

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.apps.get_app(
  x_api_key: "x-api-key_example",
  app_name: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### app_name: `String`<a id="app_name-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[SingleAppInfoResDTO](./lib/composio-ruby/models/single_app_info_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/apps/{appName}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.apps.get_apps`<a id="composiorubyappsget_apps"></a>

Retrieve a list of all applications based on query parameters.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.apps.get_apps(
  x_api_key: "x-api-key_example",
  category: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### category: `String`<a id="category-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[AppListResDTO](./lib/composio-ruby/models/app_list_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/apps` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.apps.get_open_api_specs`<a id="composiorubyappsget_open_api_specs"></a>

Get opena api specs

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.apps.get_open_api_specs(
  x_api_key: "x-api-key_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[AppListResDTO](./lib/composio-ruby/models/app_list_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/apps/openapi/spec/list` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.auth.delete_client`<a id="composiorubyauthdelete_client"></a>

Delete client

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.auth.delete_client(
  x_api_key: "x-api-key_example",
  client_id: "'+j>6",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### client_id: `String`<a id="client_id-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/client/auth/delete/{clientId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.auth.get_user_info`<a id="composiorubyauthget_user_info"></a>

Get client info

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.auth.get_user_info(
  x_api_key: "x-api-key_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/client/auth/client_info` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.auth.google_login`<a id="composiorubyauthgoogle_login"></a>

Google login

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.auth.google_login(
  x_api_key: "x-api-key_example",
  body: None,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/client/auth/google_login` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.auth.identify_client`<a id="composiorubyauthidentify_client"></a>

Identify client

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.auth.identify_client(
  hash: "string_example",
  x_api_key: "x-api-key_example",
  framework: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### hash: `String`<a id="hash-string"></a>
The hash of the client

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### framework: `String`<a id="framework-string"></a>
The framework used by the client

#### 🔄 Return<a id="🔄-return"></a>

[IdentifyClientResDTO](./lib/composio-ruby/models/identify_client_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/client/auth/identify` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.auth.logout`<a id="composiorubyauthlogout"></a>

Logout the user and clear the server side session

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.auth.logout(
  x_api_key: "x-api-key_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[LogoutResDTO](./lib/composio-ruby/models/logout_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/client/auth/logout` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.auth.pusher_user_auth`<a id="composiorubyauthpusher_user_auth"></a>

Pusher user auth

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.auth.pusher_user_auth(
  x_api_key: "x-api-key_example",
  body: None,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/client/auth/pusher_auth` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.auth.send_magic_link`<a id="composiorubyauthsend_magic_link"></a>

Send magic link

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.auth.send_magic_link(
  email: "string_example",
  verify_host: "string_example",
  x_api_key: "x-api-key_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### email: `String`<a id="email-string"></a>
The email of the user

##### verifyHost: `String`<a id="verifyhost-string"></a>
The frontend host of the user

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[MagicLinkResDTO](./lib/composio-ruby/models/magic_link_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/client/auth/send_magic_link` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.auth.track_client`<a id="composiorubyauthtrack_client"></a>

Track client

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.auth.track_client(
  framework: "string_example",
  x_api_key: "x-api-key_example",
  mac_address: "string_example",
  user_git_user_info: {
        "email" => "email_example",
    },
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### framework: `String`<a id="framework-string"></a>
The framework used by the client

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### mac_address: `String`<a id="mac_address-string"></a>
The MAC address of the client device

##### user_git_user_info: [`UserGitUserInfo`](./lib/composio-ruby/models/user_git_user_info.rb)<a id="user_git_user_info-usergituserinfolibcomposio-rubymodelsuser_git_user_inforb"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TrackClientResDTO](./lib/composio-ruby/models/track_client_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/client/auth/track` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.auth.verify_magic_link`<a id="composiorubyauthverify_magic_link"></a>

Verify magic link

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.auth.verify_magic_link(
  token: "string_example",
  x_api_key: "x-api-key_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### token: `String`<a id="token-string"></a>
The magic link token

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[VerifyMagicLinkResDTO](./lib/composio-ruby/models/verify_magic_link_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/client/auth/verify_magic_link` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.cli.generate_cli_session`<a id="composiorubycligenerate_cli_session"></a>

Handle cli code exchange

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.cli.generate_cli_session(
  x_api_key: "x-api-key_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[GenerateCLISessionResDTO](./lib/composio-ruby/models/generate_cli_session_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/cli/generate-cli-session` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.cli.get_cli_code`<a id="composiorubycliget_cli_code"></a>

Get cli code

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.cli.get_cli_code(
  x_api_key: "x-api-key_example",
  key: "key_example",
  code: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### key: `String`<a id="key-string"></a>
##### code: `String`<a id="code-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[GetCLISessionResDTO](./lib/composio-ruby/models/get_cli_session_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/cli/get-cli-code` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.cli.verify_cli_code`<a id="composiorubycliverify_cli_code"></a>

Handle cli code verification

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.cli.verify_cli_code(
  x_api_key: "x-api-key_example",
  key: "key_example",
  code: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### key: `String`<a id="key-string"></a>
##### code: `String`<a id="code-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[VerifyCLICodeResDTO](./lib/composio-ruby/models/verify_cli_code_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/cli/verify-cli-code` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.connections.delete_connection`<a id="composiorubyconnectionsdelete_connection"></a>

Delete connection

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.connections.delete_connection(
  x_api_key: "x-api-key_example",
  connected_account_id: "'+j>6",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts/{connectedAccountId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.connections.disable_connection`<a id="composiorubyconnectionsdisable_connection"></a>

Disable connection

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.connections.disable_connection(
  x_api_key: "x-api-key_example",
  connected_account_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ToggleConnectedAccountResponseDTO](./lib/composio-ruby/models/toggle_connected_account_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts/{connectedAccountId}/disable` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.connections.enable_connection`<a id="composiorubyconnectionsenable_connection"></a>

Enable connection

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.connections.enable_connection(
  x_api_key: "x-api-key_example",
  connected_account_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ToggleConnectedAccountResponseDTO](./lib/composio-ruby/models/toggle_connected_account_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts/{connectedAccountId}/enable` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.connections.get_connection`<a id="composiorubyconnectionsget_connection"></a>

Get connection

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.connections.get_connection(
  x_api_key: "x-api-key_example",
  connected_account_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ConnectedAccountResponseDTO](./lib/composio-ruby/models/connected_account_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts/{connectedAccountId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.connections.get_connections`<a id="composiorubyconnectionsget_connections"></a>

Get connections

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.connections.get_connections(
  x_api_key: "x-api-key_example",
  page: 3.14,
  page_size: 3.14,
  app_names: None,
  integration_id: "string_example",
  connection_id: "string_example",
  user_uuid: "string_example",
  show_active_only: true,
  status: "string_example",
  show_disabled: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### page: `Float`<a id="page-float"></a>
##### page_size: `Float`<a id="page_size-float"></a>
##### app_names: `Object`<a id="app_names-object"></a>
##### integration_id: `String`<a id="integration_id-string"></a>
##### connection_id: `String`<a id="connection_id-string"></a>
##### user_uuid: `String`<a id="user_uuid-string"></a>
##### show_active_only: `Boolean`<a id="show_active_only-boolean"></a>
##### status: `String`<a id="status-string"></a>
##### show_disabled: `Boolean`<a id="show_disabled-boolean"></a>
#### 🔄 Return<a id="🔄-return"></a>

[GetConnectionsResponseDto](./lib/composio-ruby/models/get_connections_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.connections.initiate_connection`<a id="composiorubyconnectionsinitiate_connection"></a>

Initiate connection

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.connections.initiate_connection(
  integration_id: "a",
  x_api_key: "x-api-key_example",
  data: "a",
  redirect_uri: "string_example",
  user_uuid: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### integrationId: `String`<a id="integrationid-string"></a>
##### x_api_key: `String`<a id="x_api_key-string"></a>
##### data: `String`<a id="data-string"></a>
##### redirectUri: `String`<a id="redirecturi-string"></a>
##### userUuid: `String`<a id="useruuid-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[InitiateConnectionResponse](./lib/composio-ruby/models/initiate_connection_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.integrations.create_connector`<a id="composiorubyintegrationscreate_connector"></a>

Create connector

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.integrations.create_connector(
  name: "string_example",
  app_id: "string_example",
  x_api_key: "x-api-key_example",
  auth_scheme: "string_example",
  auth_config: {
    },
  use_composio_auth: true,
  force_new_integration: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### name: `String`<a id="name-string"></a>
Name of the connector

##### appId: `String`<a id="appid-string"></a>
Application ID

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### authScheme: `String`<a id="authscheme-string"></a>
Authentication scheme

##### authConfig: [`AuthConfigDTO`](./lib/composio-ruby/models/auth_config_dto.rb)<a id="authconfig-authconfigdtolibcomposio-rubymodelsauth_config_dtorb"></a>
##### useComposioAuth: [`CreateConnectorPayloadDTOUseComposioAuth`](./lib/composio-ruby/models/create_connector_payload_dto_use_composio_auth.rb)<a id="usecomposioauth-createconnectorpayloaddtousecomposioauthlibcomposio-rubymodelscreate_connector_payload_dto_use_composio_authrb"></a>
##### forceNewIntegration: `Boolean`<a id="forcenewintegration-boolean"></a>
Flag to force new integration

#### 🔄 Return<a id="🔄-return"></a>

[GetConnectorInfoResDTO](./lib/composio-ruby/models/get_connector_info_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/integrations` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.integrations.delete_connector`<a id="composiorubyintegrationsdelete_connector"></a>

Delete connector

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.integrations.delete_connector(
  x_api_key: "x-api-key_example",
  integration_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### integration_id: `String`<a id="integration_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[DeleteRowAPIDTO](./lib/composio-ruby/models/delete_row_apidto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/integrations/{integrationId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.integrations.get_connector_info`<a id="composiorubyintegrationsget_connector_info"></a>

Get connector info

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.integrations.get_connector_info(
  x_api_key: "x-api-key_example",
  integration_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### integration_id: `String`<a id="integration_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[GetConnectorInfoResDTO](./lib/composio-ruby/models/get_connector_info_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/integrations/{integrationId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.integrations.list_global_connectors`<a id="composiorubyintegrationslist_global_connectors"></a>

List global connectors

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.integrations.list_global_connectors(
  x_api_key: "x-api-key_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[GetConnectorListResDTO](./lib/composio-ruby/models/get_connector_list_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/integrations` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.integrations.patch_connector`<a id="composiorubyintegrationspatch_connector"></a>

Patch connector

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.integrations.patch_connector(
  x_api_key: "x-api-key_example",
  integration_id: "'+j>6",
  auth_config: {},
  enabled: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### integration_id: `String`<a id="integration_id-string"></a>
##### authConfig: `Object`<a id="authconfig-object"></a>
Authentication configuration for the connector

##### enabled: `Boolean`<a id="enabled-boolean"></a>
Flag to indicate if the connector is enabled

#### 🔄 Return<a id="🔄-return"></a>

[PatchConnectorResDTO](./lib/composio-ruby/models/patch_connector_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/integrations/{integrationId}` `PATCH`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.integrations.patch_post_connector`<a id="composiorubyintegrationspatch_post_connector"></a>

Patch post connector

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.integrations.patch_post_connector(
  x_api_key: "x-api-key_example",
  integration_id: "'+j>6",
  auth_config: {},
  enabled: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### integration_id: `String`<a id="integration_id-string"></a>
##### authConfig: `Object`<a id="authconfig-object"></a>
Authentication configuration for the connector

##### enabled: `Boolean`<a id="enabled-boolean"></a>
Flag to indicate if the connector is enabled

#### 🔄 Return<a id="🔄-return"></a>

[PatchConnectorResDTO](./lib/composio-ruby/models/patch_connector_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/integrations/{integrationId}/status` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.login.handle_o_auth2_login`<a id="composiorubyloginhandle_o_auth2_login"></a>

Handle o auth 2 callback

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.login.handle_o_auth2_login(
  x_api_key: "x-api-key_example",
  app_name: "'+j>6",
  redirect_uri: "string_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### app_name: `String`<a id="app_name-string"></a>
##### redirect_uri: `String`<a id="redirect_uri-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/login/{appName}/auth` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.login.verify_o_auth2_login`<a id="composiorubyloginverify_o_auth2_login"></a>

Verify o auth 2 login

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.login.verify_o_auth2_login(
  x_api_key: "x-api-key_example",
  app_name: "'+j>6",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### app_name: `String`<a id="app_name-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/login/{appName}/callback` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.logs.get_logs`<a id="composiorubylogsget_logs"></a>

List logs

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.logs.get_logs(
  x_api_key: "x-api-key_example",
  type: "error",
  time: "5m",
  status: "all",
  search: "string_example",
  integration_id: "string_example",
  limit: 10,
  cursor: "string_example",
  connection_id: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### type: `String`<a id="type-string"></a>
##### time: `String`<a id="time-string"></a>
##### status: `String`<a id="status-string"></a>
##### search: `String`<a id="search-string"></a>
##### integration_id: `String`<a id="integration_id-string"></a>
##### limit: `Float`<a id="limit-float"></a>
##### cursor: `String`<a id="cursor-string"></a>
##### connection_id: `String`<a id="connection_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[LogsResDTO](./lib/composio-ruby/models/logs_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/logs/` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.metadata.get_metadata`<a id="composiorubymetadataget_metadata"></a>

Get metadata

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.metadata.get_metadata(
  x_api_key: "x-api-key_example",
  email: "email_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### email: `String`<a id="email-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/metadata` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.metadata.get_toggle_info`<a id="composiorubymetadataget_toggle_info"></a>

Get toggle info

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.metadata.get_toggle_info(
  x_api_key: "x-api-key_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/metadata/toggle.info` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.metadata.toggle_trigger_state`<a id="composiorubymetadatatoggle_trigger_state"></a>

Toggle trigger state

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.metadata.toggle_trigger_state(
  enabled: true,
  x_api_key: "x-api-key_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### enabled: `Boolean`<a id="enabled-boolean"></a>
Flag to enable or disable triggers

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/metadata/toggle/trigger` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.metadata.update_metadata`<a id="composiorubymetadataupdate_metadata"></a>

Update metadata

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.metadata.update_metadata(
  email: "string_example",
  x_api_key: "x-api-key_example",
  metadata: None,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### email: `String`<a id="email-string"></a>
The email associated with the metadata request

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### metadata: `Object`<a id="metadata-object"></a>
Additional metadata as a key-value pair

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/metadata` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.team.invite_member`<a id="composiorubyteaminvite_member"></a>

Invite member

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.team.invite_member(
  email: "string_example",
  name: "string_example",
  verify_host: "string_example",
  x_api_key: "x-api-key_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### email: `String`<a id="email-string"></a>
The email of the member

##### name: `String`<a id="name-string"></a>
The name of the member

##### verifyHost: `String`<a id="verifyhost-string"></a>
The host to verify the member

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[MemberResDTO](./lib/composio-ruby/models/member_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/team/invite` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.team.list_members`<a id="composiorubyteamlist_members"></a>

List members

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.team.list_members(
  x_api_key: "x-api-key_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[MemberResDTO](./lib/composio-ruby/models/member_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/team/members` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.team.remove_member`<a id="composiorubyteamremove_member"></a>

Remove member

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.team.remove_member(
  x_api_key: "x-api-key_example",
  id: "'+j>6",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### id: `String`<a id="id-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/team/members/{id}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.callback_url`<a id="composiorubytriggerscallback_url"></a>

Sets a universal callback URL for the client.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.triggers.callback_url(
  callback_url: "string_example",
  x_api_key: "x-api-key_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### callbackURL: `String`<a id="callbackurl-string"></a>
The callback URL

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TriggerResponseDTO](./lib/composio-ruby/models/trigger_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/set_callback_url` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.delete_trigger`<a id="composiorubytriggersdelete_trigger"></a>

Deletes a specified trigger instance.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.triggers.delete_trigger(
  x_api_key: "x-api-key_example",
  trigger_instance_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### trigger_instance_id: `String`<a id="trigger_instance_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[DeleteRowAPIDTO](./lib/composio-ruby/models/delete_row_apidto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/instance/{triggerInstanceId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.disable_trigger`<a id="composiorubytriggersdisable_trigger"></a>

Disables a specified trigger instance.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.triggers.disable_trigger(
  x_api_key: "x-api-key_example",
  trigger_instance_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### trigger_instance_id: `String`<a id="trigger_instance_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TriggerResponseDTO](./lib/composio-ruby/models/trigger_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/disable/{triggerInstanceId}` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.enable_trigger`<a id="composiorubytriggersenable_trigger"></a>

Enables a trigger for a connected account and specific trigger name.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.triggers.enable_trigger(
  trigger_config: {},
  x_api_key: "x-api-key_example",
  connected_account_id: "'+j>6",
  trigger_name: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### triggerConfig: `Object`<a id="triggerconfig-object"></a>
The trigger configuration

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### connected_account_id: `String`<a id="connected_account_id-string"></a>
##### trigger_name: `String`<a id="trigger_name-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TriggerResponseDTO](./lib/composio-ruby/models/trigger_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/enable/{connectedAccountId}/{triggerName}` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.get_active_triggers`<a id="composiorubytriggersget_active_triggers"></a>

Lists active triggers based on query parameters.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.triggers.get_active_triggers(
  x_api_key: "x-api-key_example",
  connected_account_ids: "string_example",
  integration_ids: "string_example",
  trigger_ids: "string_example",
  trigger_names: "string_example",
  page: 3.14,
  limit: 3.14,
  show_disabled: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### connected_account_ids: `String`<a id="connected_account_ids-string"></a>
##### integration_ids: `String`<a id="integration_ids-string"></a>
##### trigger_ids: `String`<a id="trigger_ids-string"></a>
##### trigger_names: `String`<a id="trigger_names-string"></a>
##### page: `Float`<a id="page-float"></a>
##### limit: `Float`<a id="limit-float"></a>
##### show_disabled: `Boolean`<a id="show_disabled-boolean"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActiveTriggersResDTO](./lib/composio-ruby/models/active_triggers_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/active_triggers` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.get_logs`<a id="composiorubytriggersget_logs"></a>

Fetches logs based on connection and integration details.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.triggers.get_logs(
  x_api_key: "x-api-key_example",
  connection_id: "string_example",
  integration_id: "string_example",
  page: 3.14,
  limit: 3.14,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### connection_id: `String`<a id="connection_id-string"></a>
##### integration_id: `String`<a id="integration_id-string"></a>
##### page: `Float`<a id="page-float"></a>
##### limit: `Float`<a id="limit-float"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TriggerLogsResDTO](./lib/composio-ruby/models/trigger_logs_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/logs` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.get_trigger`<a id="composiorubytriggersget_trigger"></a>

Retrieves a specific trigger by its ID.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.triggers.get_trigger(
  x_api_key: "x-api-key_example",
  trigger_id: "'+j>6",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### trigger_id: `String`<a id="trigger_id-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/get/{triggerId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.get_trigger_info_v2`<a id="composiorubytriggersget_trigger_info_v2"></a>

Get Trigger Info

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.triggers.get_trigger_info_v2(
  x_api_key: "x-api-key_example",
  trigger_name: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### trigger_name: `String`<a id="trigger_name-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[SingleTriggerResDTO](./lib/composio-ruby/models/single_trigger_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/triggers/{triggerName}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.get_webhook_url`<a id="composiorubytriggersget_webhook_url"></a>

Retrieves the universal callback URL set for the client.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.triggers.get_webhook_url(
  x_api_key: "x-api-key_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[WebhookURLResponseDTO](./lib/composio-ruby/models/webhook_url_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/callback_url` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.handle_pusher_events`<a id="composiorubytriggershandle_pusher_events"></a>

Handle pusher events

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.triggers.handle_pusher_events(
  x_api_key: "x-api-key_example",
  body: None,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/pusher` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.handle_trigger`<a id="composiorubytriggershandle_trigger"></a>

Handle trigger

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.triggers.handle_trigger(
  x_api_key: "x-api-key_example",
  app_name: "'+j>6",
  client_id: "'+j>6",
  body: None,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### app_name: `String`<a id="app_name-string"></a>
##### client_id: `String`<a id="client_id-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/handle/{appName}/{clientId}` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.list_triggers`<a id="composiorubytriggerslist_triggers"></a>

List triggers

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.triggers.list_triggers(
  x_api_key: "x-api-key_example",
  app_names: "string_example",
  connected_account_ids: "string_example",
  trigger_ids: "string_example",
  show_enabled_only: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### app_names: `String`<a id="app_names-string"></a>
##### connected_account_ids: `String`<a id="connected_account_ids-string"></a>
##### trigger_ids: `String`<a id="trigger_ids-string"></a>
##### show_enabled_only: `Boolean`<a id="show_enabled_only-boolean"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TriggerResDTO](./lib/composio-ruby/models/trigger_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.set_callback_url`<a id="composiorubytriggersset_callback_url"></a>

Sets a universal callback URL for the client.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
composioruby.triggers.set_callback_url(
  x_api_key: "x-api-key_example",
  body: None,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_api_key: `String`<a id="x_api_key-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/setCallbackURL` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.switch_post_trigger_instance_status`<a id="composiorubytriggersswitch_post_trigger_instance_status"></a>

Switches the status of a trigger instance.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.triggers.switch_post_trigger_instance_status(
  enabled: true,
  x_api_key: "x-api-key_example",
  trigger_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### enabled: `Boolean`<a id="enabled-boolean"></a>
The new enabled status of the trigger

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### trigger_id: `String`<a id="trigger_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TriggerResponseDTO](./lib/composio-ruby/models/trigger_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/instance/{triggerId}/status` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composioruby.triggers.switch_trigger_instance_status`<a id="composiorubytriggersswitch_trigger_instance_status"></a>

Switches the status of a trigger instance.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composioruby.triggers.switch_trigger_instance_status(
  enabled: true,
  x_api_key: "x-api-key_example",
  trigger_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### enabled: `Boolean`<a id="enabled-boolean"></a>
The new enabled status of the trigger

##### x_api_key: `String`<a id="x_api_key-string"></a>
##### trigger_id: `String`<a id="trigger_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TriggerResponseDTO](./lib/composio-ruby/models/trigger_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/instance/{triggerId}/status` `PATCH`

[🔙 **Back to Table of Contents**](#table-of-contents)

---