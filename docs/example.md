## Example Actions

All Examples action requests (excluding READ actions) must include a valid HTTP header `Authorization: Token
 token=<token>` or they will be rejected with a status of 401 Unauthorized.

All of the Example actions follow the *RESTful* style.

Examples are associated with users. Actions will only retrieve a Example if the user associated with the `Authorization` header is the user.
If this requirement is unmet, the response will be 404 Not Found, except for
 the index action which will return an empty Examples array.

*Summary:*

<table>
<tr>
  <th colspan="3">Request</th>
  <th colspan="2">Response</th>
</tr>
<tr>
  <th>Verb</th>
  <th>URI</th>
  <th>body</th>
  <th>Status</th>
  <th>body</th>
</tr>
<tr>
<td>GET</td>
<td>/Examples</td>
<td>n/a</td>
<td>200, OK</td>
<td><strong>Examples found</strong></td>
</tr>
<tr>
  <td colspan="3">
  The default is to retrieve all Examples associated with the user.
  </td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>POST</td>
<td>/Examples</td>
<td>n/a</td>
<td>201, Created</td>
<td><strong>Example created</strong></td>
</tr>
<tr>
  <td colspan="3">
  </td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
  <td colspan="3">
  </td>
  <td>400 Bad Request</td>
  <td><strong>errors</strong></td>
</tr>
<tr>
<td>GET</td>
<td>/Examples/:id</td>
<td>n/a</td>
<td>200, OK</td>
<td><strong>Example found</strong</td>
</tr>
<tr>
  <td colspan="3">
  </td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
  <td colspan="3">
  </td>
  <td>404 Not Found</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>PATCH</td>
<td>/Examples/:id</td>
<td><strong>Example delta</strong></td>
<td>200, OK</td>
<td><strong>Example updated</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>400 Bad Request</td>
  <td><strong>errors</strong></td>
</tr>
<tr>
  <td colspan="3"></td>
  <td>404 Not Found</td>
  <td><em>empty</em></td>
</tr>
</table>

### index

The `index` action is a *GET* that retrieves all the Examples associated with a
 user.
The response body will contain JSON containing an array of Examples, e.g.:

```json
{
  "Examples": [
    {
      "id": 1,
      "service_id": 1,
      "text": "string",
      "editable": true
      }
  ]
}
```

If there are no Examples associated with the user, the response body will contain an empty Examples array, e.g.:

```json
{
  "Examples": [
  ]
}
```

### create

The `create` action expects a *POST* with an empty body (e.g `''` or `'{}'` if
 JSON).
If the request is successful, the response will have an HTTP Status of 201
 Created, and the body will contain JSON of the created Example with `editable` set
to the user calling `create`, e.g.:

```json
{
  "Examples": [
    {
      "id": 1,
      "service_id": 1,
      "text": "string",
      "editable": true
      }
  ]
}
```

If the request is unsuccessful, the response will have an HTTP Status of 400 Bad
 Request, and the response body will be JSON describing the errors.

### show

The `show` action is a *GET* specifing the `id` of the Example to retrieve.
If the request is successful the status will be 200, OK, and the response body
 will contain JSON for the Example requested, e.g.:

```json
{
  "Examples": [
    {
      "id": 1,
      "service_id": 1,
      "text": "string",
      "editable": true
      }
  ]
}
```

### update

#### update a Example's states

This `update` action expects a *PATCH* with changes to to an existing Example. To update, toggle between the boolean stating if the example is fulfilled.

The `update` action expects data formatted as such:
```json
{
  "Examples": [
    {
      "id": 1,
      "service_id": 1,
      "text": "string",
      "editable": true
      }
  ]
}
```

If the request is successful, the response will have an HTTP Status of 200 OK,
 and the body will be JSON containing the modified Example, e.g.:

```json
{
  "Examples": [
    {
      "id": 1,
      "service_id": 1,
      "text": "string",
      "editable": true
      }
  ]
}
```

If the request is unsuccessful, the response will have an HTTP Status of 400 Bad
 Request, and the response body will be JSON describing the errors.
