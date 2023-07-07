<link href="css/EstilosReloj.css" rel='stylesheet'/>

<div class="fecha" style="padding-top: 120px">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="card bloque display-4">
                    <div class="card-body">
                        <div class="dias" ><span id="days"></span></div>
                    </div>
                </div>
                <h4>DÍAS</h4>
            </div>
            <div class="col-md-3">
                <div class="card bloque display-4">
                    <div class="card-body">
                        <div class="horas" ><span id="hours"></span></div>
                    </div>
                </div>
                <h4>HORAS</h4>
            </div>
            <div class="col-md-3">     
                <div class="card bloque display-4">
                    <div class="card-body">
                        <div class="minutos" ><span id="minutes"></span></div>
                    </div>
                </div>
                <h4>MINUTOS</h4>
            </div>
            <div class="col-md-3">
                <div class="card bloque display-4">
                    <div class="card-body">
                        <div class="segundos" ><span id="seconds"></span></div>
                    </div>
                </div>
                <h4>SEGUNDOS</h4>
            </div>
        </div>
    </div>
</div>


<script>
    document.addEventListener('DOMContentLoaded', () => {

        //===
        // VARIABLES
        //===
        const DATE_TARGET = new Date('12/26/2022 10:00 AM');
        // DOM for render
        const SPAN_DAYS = document.querySelector('span#days');
        const SPAN_HOURS = document.querySelector('span#hours');
        const SPAN_MINUTES = document.querySelector('span#minutes');
        const SPAN_SECONDS = document.querySelector('span#seconds');
        // Milliseconds for the calculations
        const MILLISECONDS_OF_A_SECOND = 1000;
        const MILLISECONDS_OF_A_MINUTE = MILLISECONDS_OF_A_SECOND * 60;
        const MILLISECONDS_OF_A_HOUR = MILLISECONDS_OF_A_MINUTE * 60;
        const MILLISECONDS_OF_A_DAY = MILLISECONDS_OF_A_HOUR * 24

        //===
        // FUNCTIONS
        //===

        /**
         * Method that updates the countdown and the sample
         */
        function updateCountdown() {
            // Calcs
            const NOW = new Date()
            const DURATION = DATE_TARGET - NOW;
            const REMAINING_DAYS = Math.floor(DURATION / MILLISECONDS_OF_A_DAY);
            const REMAINING_HOURS = Math.floor((DURATION % MILLISECONDS_OF_A_DAY) / MILLISECONDS_OF_A_HOUR);
            const REMAINING_MINUTES = Math.floor((DURATION % MILLISECONDS_OF_A_HOUR) / MILLISECONDS_OF_A_MINUTE);
            const REMAINING_SECONDS = Math.floor((DURATION % MILLISECONDS_OF_A_MINUTE) / MILLISECONDS_OF_A_SECOND);

            // Render
            SPAN_DAYS.textContent = REMAINING_DAYS;
            SPAN_HOURS.textContent = REMAINING_HOURS;
            SPAN_MINUTES.textContent = REMAINING_MINUTES;
            SPAN_SECONDS.textContent = REMAINING_SECONDS;
        }

        //===
        // INIT
        //===
        updateCountdown();
        // Refresh every second
        setInterval(updateCountdown, MILLISECONDS_OF_A_SECOND);
    });
</script>
