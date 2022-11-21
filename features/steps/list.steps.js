const { Given, When, Then } = require('@cucumber/cucumber');
const { assert }            = require('chai');
const expect                = require("chai").expect;
const List                  = require("../../src/list.js")

var list
var list_value
var rc


// Casos definidos de "Given":
Given('una nueva lista', () => {
    list = new List();
});

Given('una lista con los siguientes elementos', (elements) =>  {

    list = new List();

    let values = Object.values(elements)[0][0];
  
    if(values.length % 2 != 0)
        return assert(false, "Invalid element list received");

    for(let i = 0; i < values.length; i = i + 2) {
        list.add(values[i], values[i+1]);
    }
})

// Casos definidos de "When":
When('se agrega la pareja {}', (json) => {
    obj = JSON.parse(json);
    rc = list.add(Object.keys(obj)[0], Object.values(obj)[0]);
});

When('se agrega la entrada con clave nula y valor {int}', (value) => {
    rc = list.add(null, value);
});

When('se agrega la entrada con clave string vacio y valor {int}', (value) => {
    rc = list.add("", value);
});

When('se agrega la entrada con clave que no es string y valor {int}', (value) => {
    rc = list.add(500, value);
});

When('se agrega la entrada  con clave string y valor null', () => {
    rc = list.add("quince", null);
});

When('se agrega la entrada  con clave string y valor undefined', () => {
    rc = list.add("quince", undefined);
});

When('se actualiza la pareja {}', (json) => {
    obj = JSON.parse(json);
    rc = list.update(Object.keys(obj)[0], Object.values(obj)[0]);
});

When('se borra la entrada con clave {string}', (key) => {
    rc = list.delete(key);
});

// Casos definidos de "Then":
Then('la lista tiene {int} elemento(s) almacenado(s)', (count) => {
    assert.equal(list.count(), count);
});

Then('retorna {word}', (rc_str) => {
    if(rc_str === 'true')
        assert.isTrue(rc);
    else
        assert.isFalse(rc);
})

Then('el valor recuperado para {string} es {int}',  (key, value) =>  {
    assert.equal(value, list.find(key));
});

Then('el valor recuperado para {string} es NaN',  (key) =>  {
    assert.isNaN(list.find(key));
});

Then('la lista de claves recuperadas es devuelta en orden ascendente', () => {
    let key_array = list.getKeys();
    let key_ordered_array = [...key_array];
    key_ordered_array.sort();
});