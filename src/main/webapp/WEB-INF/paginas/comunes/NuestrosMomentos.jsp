<link href="css/EstilosQuienesSon.css" rel='stylesheet'/>
<link href="css/EstilosModales.css" rel='stylesheet'/>

<section class="bg-warning" style="text-align: center">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- Trigger the Modal -->
                <img id="myImg1" src="image/nuestroMomento1.jpg" alt="Movimiento de jornadas de Vida Cristiana" style="width:100%; max-width:300px">
                <!-- Trigger the Modal -->
                <img id="myImg2" src="image/nuestroMomento2.jpg" alt="Movimiento de jornadas de Vida Cristiana" style="width:100%; max-width:300px">
                <!-- Trigger the Modal -->
                <img id="myImg3" src="image/nuestroMomento3.jpg" alt="Movimiento de jornadas de Vida Cristiana" style="width:100%; max-width:300px">

                <!-- The Modal -->
                <div id="myModal" class="mod" style="z-index: 100;">
                    <!-- The Close Button -->
                    <span class="close">&times;</span>

                    <!-- Modal Content (The Image) -->
                    <img class="modal-contenido" id="img01">

                    <!-- Modal Caption (Image Text) -->
                    <div id="caption"></div>
                </div>
                <div class="py-4">                    
                </div>
            </div>
        </div>
    </div>
</section>


<Script>
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the image and insert it inside the modal - use its "alt" text as a caption
    var img = document.getElementById("myImg1");
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");
    img.onclick = function () {
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
    }

// Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }
</Script>


<Script>
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the image and insert it inside the modal - use its "alt" text as a caption
    var img = document.getElementById("myImg2");
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");
    img.onclick = function () {
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
    }

// Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }
</Script>


<Script>
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the image and insert it inside the modal - use its "alt" text as a caption
    var img = document.getElementById("myImg3");
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");
    img.onclick = function () {
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
    }

// Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }
</Script>