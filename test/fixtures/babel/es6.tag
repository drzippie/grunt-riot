<babel>
  <h1>{label}</h1>
  <h2>{subLabel}</h2>
  <script type="es6">
    
    this.on('mount', () => {
      this.root.querySelector("h1").style.color = "red";
      this.root.querySelector("h2").style.color = "green";
    });
    this.label = "test";
    this.sublabel = "test2";
    function* idMaker(){
        var index = 0;
        while(true)
            yield index++;
    }

    var gen = idMaker();

    console.log(gen.next().value); // 0
    console.log(gen.next().value); // 1
    console.log(gen.next().value); // 2
  </script>
</babel>