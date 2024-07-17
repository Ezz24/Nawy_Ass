1. POST /pet

Description: Add a new pet to the store.

Test Case 1.1: Add New Pet with Valid Data

 

    {
      "id": 12345,
      "category": {
        "id": 1,
        "name": "Dogs"
      },
      "name": "Bulldog",
      "photoUrls": [
        "http://photoexample.com/photo1"
      ],
      "tags": [
        {
          "id": 1,
          "name": "tag1"
        }
      ],
      "status": "available"
    }

    Expected Result: The pet is added successfully with status code 200. The response body contains the pet details as provided.
    Actual Result: The pet was added successfully with status code 200. The response body contained the pet details as provided.

Test Case 1.2: Add New Pet with Missing Required Fields


  

    {
      "name": "Bulldog"
    }

    Expected Result: The request fails with status code 400. The response contains an error message indicating missing required fields.
    Actual Result: The request failed with status code 400. The response contained an error message indicating missing required fields.

Test Case 1.3: Add New Pet with Invalid Data Types


    

    {
      "id": "abc",
      "category": {
        "id": "one",
        "name": 123
      },
      "name": 12345,
      "photoUrls": "http://example.com/photo1",
      "tags": [
        {
          "id": "one",
          "name": 123
        }
      ],
      "status": "available"
    }

    Expected Result: The request fails with status code 400. The response contains an error message indicating invalid data types.
    Actual Result: The request failed with status code 400. The response contained an error message indicating invalid data types.

2. GET /pet/{petId}

Description: Find pet by ID.

Test Case 2.1: Get Pet by Valid ID

    Input Data: petId = 12
    Expected Result: The request is successful with status code 200. The response contains the pet details with ID 12.
     Actual Result: Actual Result: The request was successful with status code 200. The response contained the pet details with ID 12.
Test Case 2.2: Get Pet by Non-Existent ID

    Input Data: petId = 99999
    Expected Result: The request fails with status code 404. The response contains an error message indicating that the pet is not found.
    Actual Result: The request failed with status code 404. The response contained an error message indicating that the pet is not found.

Test Case 2.3: Get Pet by Invalid ID

    Input Data: petId = abc
    Expected Result: The request fails with status code 404. The response contains an error message indicating invalid pet ID.
   Actual Result : Please correct the following validation errors and try again.
For 'petId': Value must be an integer.

3. PUT /pet

Description: Update an existing pet.

Test Case 3.1: Update Pet with Valid Data

    Input Data:


    {
      "id": 12345,
      "category": {
        "id": 1,
        "name": "Dogs"
      },
      "name": "Bulldog Updated",
      "photoUrls": [
        "http://photo2.com/photo1"
      ],
      "tags": [
        {
          "id": 1,
          "name": "tag1"
        }
      ],
      "status": "sold"
    }

    Expected Result: The pet is updated successfully with status code 200. The response body contains the updated pet details.
    Actual Result: The pet was updated successfully with status code 200. The response body contained the updated pet details.


Test Case 3.2: Update Pet with Missing Required Fields

    Input Data:

    json

    {
      "id": 12345,
      "name": "Bulldog Updated"
    }

    Expected Result: The request fails with status code 400. The response contains an error message indicating missing required fields.
    Actual Result : it returns 200 which is wrong 	
Response body
{
  "id": 12345,
  "name": "Bulldog Updated",
  "photoUrls": [],
  "tags": []
}

Test Case 3.3: Update Pet with Invalid Data Types

  

    {
      "id": "abc",
      "category": {
        "id": "one",
        "name": 123
      },
      "name": 12345,
      "photoUrls": "http://example.com/photo1",
      "tags": [
        {
          "id": "one",
          "name": 123
        }
      ],
      "status": "sold"
    }

    Expected Result: The request fails with status code 400. The response contains an error message indicating invalid data types.
    Actual results :  it falis due this erros: 
    Please correct the following validation errors and try again.
For 'body' at path 'id': Value must be an integer.
For 'body' at path 'category.id': Value must be an integer.
For 'body' at path 'category.name': Value must be a string.
For 'body' at path 'name': Value must be a string.
For 'body' at path 'tags[0].id': Value must be an integer.
For 'body' at path 'tags[0].name': Value must be a string.

4. DELETE /pet/{petId}

Description: Delete a pet by ID.

Test Case 4.1: Delete Pet by Valid ID

    Input Data: petId = 12
    Expected Result: The pet is deleted successfully with status code 200. The response indicates the pet was successfully deleted.
    Actual Result: The pet was deleted successfully with status code 200. The response indicated the pet was successfully deleted.

Test Case 4.2: Delete Pet by Non-Existent ID

    Input Data: petId = 99999
    Expected Result: The request fails with status code 404. The response contains an error message indicating that the pet is not found.
    Actual Result: The request failed with status code 404. The response contained an error message indicating that the pet is not found.

Test Case 4.3: Delete Pet by Invalid ID

    Input Data: petId = abc
    Expected Result: The request fails with status code 400. The response contains an error message indicating invalid pet ID.
    Actual Result: The request failed with status code 400. For 'petId': Value must be an integer.
