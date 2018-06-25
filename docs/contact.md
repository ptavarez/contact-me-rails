## Contact Actions

All Contacts action requests must include a valid HTTP header `Authorization: Token
 token=<token>` or they will be rejected with a status of 401 Unauthorized.

All of the Contact actions follow the *RESTful* style.

Contacts are associated with users. Actions will only retrieve a Contact if the user associated with the `Authorization` header is the user.
If this requirement is unmet, the response will be 404 Not Found, except for
 the index action which will return an empty Contacts array.

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
<td>/Contacts</td>
<td>n/a</td>
<td>200, OK</td>
<td><strong>Contacts found</strong></td>
</tr>
<tr>
  <td colspan="3">
  The default is to retrieve all Contacts associated with the user.
  </td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<td>GET</td>
<td>/Contacts?search=<params></td>
<td>n/a</td>
<td>200, OK</td>
<td><strong>Contacts found</strong></td>
</tr>
<tr>
  <td colspan="3">
  Retrieves all Contacts that match search parameter and are associated with the user.
  </td>
  <td>401 Unauthorized</td>
  <td><em>empty</em></td>
</tr>
<tr>
<td>POST</td>
<td>/Contacts</td>
<td>n/a</td>
<td>201, Created</td>
<td><strong>Contact created</strong></td>
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
<td>/Contacts/:id</td>
<td>n/a</td>
<td>200, OK</td>
<td><strong>Contact found</strong</td>
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
<td>/Contacts/:id</td>
<td><strong>Contact delta</strong></td>
<td>200, OK</td>
<td><strong>Contact updated</strong></td>
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

The `index` action is a *GET* that retrieves all the Contacts associated with a
 user.
 
If a search parameter is given, all contacts that match the parameter will be retreived.
 
The response body will contain JSON containing an array of Contacts, e.g.:

```json
{
  "Contacts": [
    {
      "id": 1,
      "first_name": "String",
      "last_name": "String",
      "job_title": "String",
      "phone_number": "String",
      "email": "String",
      "editable": true
      }
  ]
}
```

If there are no Contacts associated with the user, the response body will contain an empty Contacts array, e.g.:

```json
{
  "Contacts": [
  ]
}
```

### create

The `create` action expects a *POST* with an empty body (e.g `''` or `'{}'` if
 JSON).
If the request is successful, the response will have an HTTP Status of 201
 Created, and the body will contain JSON of the created Contact with `editable` set
to the user calling `create`, e.g.:

```json
{
  "Contacts": [
    {
      "id": 1,
      "first_name": "String",
      "last_name": "String",
      "job_title": "String",
      "phone_number": "String",
      "email": "String",
      "editable": true
      }
  ]
}
```

If the request is unsuccessful, the response will have an HTTP Status of 400 Bad
 Request, and the response body will be JSON describing the errors.

### show

The `show` action is a *GET* specifing the `id` of the Contact to retrieve.
If the request is successful the status will be 200, OK, and the response body
 will contain JSON for the Contact requested, e.g.:

```json
{
  "Contacts": [
    {
      "id": 1,
      "first_name": "String",
      "last_name": "String",
      "job_title": "String",
      "phone_number": "String",
      "email": "String",
      "editable": true
      }
  ]
}
```

### update

#### update a Contact's states

This `update` action expects a *PATCH* with changes to to an existing Contact. To update, toggle between the boolean stating if the contact is fulfilled.

The `update` action expects data formatted as such:
```json
{
  "Contacts": [
    {
      "id": 1,
      "first_name": "String",
      "last_name": "String",
      "job_title": "String",
      "phone_number": "String",
      "email": "String",
      "editable": true
      }
  ]
}
```

If the request is successful, the response will have an HTTP Status of 200 OK,
 and the body will be JSON containing the modified Contact, e.g.:

```json
{
  "Contacts": [
    {
      "id": 1,
      "first_name": "String",
      "last_name": "String",
      "job_title": "String",
      "phone_number": "String",
      "email": "String",
      "editable": true
      }
  ]
}
```

If the request is unsuccessful, the response will have an HTTP Status of 400 Bad
 Request, and the response body will be JSON describing the errors.
