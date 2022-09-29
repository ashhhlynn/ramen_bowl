class BaseOption {

    static all = []
    constructor({id, name}){
        this.id = id;
        this.name = name;

        BaseOption.all.push(this)
    }

   static fetchAndMakeBaseOptions(){

        let gridBaseBuilder = document.getElementById("base-container")

        return fetch("http://localhost:3000/base_options")
        .then(resp=> resp.json())
        .then(function(baseOptionsArray){
            return baseOptionsArray.forEach(function(baseOption){
                return new BaseOption(baseOption)
            })
        })
        .then(function(){
            BaseOption.all.forEach(baseOption => {
                gridBaseBuilder.innerHTML += `
                <img id="${baseOption.name}" data-id="${baseOption.id}" data-class="BaseOption" draggable="true" ondragstart="onDragStart(event);" src="./public/images/${baseOption.name}.png" class="builder-image">
                `
            })
        })
    }
    
}