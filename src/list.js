const INVALID_INDEX =  -1 // Constante que representa un indice invalido dentro del arreglo de elementos

module.exports = class List {

    list = [];
    
    constructor() {}

    find(key) {

        let i = this.getIndex(key);
        
        if(i === INVALID_INDEX)
            return NaN;      

        return this.list[i].value;
    }

    delete(key) {
        
        let i = this.getIndex(key);
        
        if(i === INVALID_INDEX)
            return false;

        this.list.splice(i, 1);

        return true;
    }

    getIndex(key) {

        for(let i = 0; i < this.list.length; i++) {
            if(this.list[i].key === key) {
                return i;
            }
        }

        return INVALID_INDEX;
    }

    getKeys() {

        let keys = [];

        this.list.forEach(elem => {
            keys.push(elem.key);
        });

        return keys.sort();
    }

    add(key, value) {

        // Verificar key
        if(typeof(key) !== "string")
            return false;

        if(key.length === 0)
            return false;

        if(!Number.isNaN(this.find(key)))
            return false;

        // Verificar value
        if(value === null || value === undefined)
            return false;

        this.list.push(
            {
                "key" : key,
                "value" : Number(value)
            }
        )

        return true;
    }

    update(key, value) {

        let i = this.getIndex(key);
        
        if(i === INVALID_INDEX)
            return false;     
            
        this.list[i].value = value;

        return true;
    }

    count() {
        return this.list.length;
    }
}
