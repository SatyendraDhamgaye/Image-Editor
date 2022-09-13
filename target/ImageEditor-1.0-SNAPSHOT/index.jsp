<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="assets/css/imgEditor.css" type="text/css" > 
         
        <!-- <link rel="stylesheet" href="Css.css" type="text/css" > -->
        
    </head>
    <body>
        
        
        <div><img src="assets/img/moon.png" id="icon"></div>
        
        <div class="file-upload-section" onclick="selectImage()">
            
            <input id="foto-file" type="file">
            Select Image
            
        </div>
      
        
        <div class="upper-button-section">
            
            <table class="button-table">
                <tr>
                    
                    <td> <button class="operation-btn" onclick="crop()"> Crop </button> </td>
                    <td> <button class="operation-btn" onclick="flipVertically()"> Mirror </button> </td>
                    <td> <button class="operation-btn"> 
                        Rotate
                            <input type="range" id="rotate-range" value="0" min="0" max="360" onchange="rotate(this)">
                        </button> </td>
                    
                </tr>
                
                
                
            </table>
            
        </div>
        
        
        
        
        
        <div class="img-container">
            
            <img id="foto-image" class="image">
            
        </div>
        
        
        
        <div class="button-section">
            
            <table class="button-table">
                <tr>
                    
                    <td> <button class="operation-btn" onclick="makeGrayScale()"> GrayScale </button> </td>
                    <td> <button class="operation-btn" onclick="makeBright()"> Brighter </button> </td>
                    <td> <button class="operation-btn" onclick="makeDark()"> Darker </button> </td>
                    
                </tr>
                
                <tr>
                    
                    <td> <button class="operation-btn" onclick="makeBlur()"> Blur </button> </td>
                    <td> <button class="operation-btn" onclick="makeEmboss()"> Emboss </button> </td>
                    <td> <button class="operation-btn" onclick="makeSharp()"> Sharp </button> </td>
                    
                </tr>
                
                <tr>
                    
                    <td> 
                        <input type="color" id="color-picker" value="#000000" oninput="makeColorize(this)"/>
                        <button class="operation-btn" onclick="openColorpicker()"> Color </button> </td>
                    
                    
                    <td> 
                        <input type="color" id="colorized-color-picker" value="#000000" oninput="applyColorFilter(this)"/>
                        <button class="operation-btn" onclick="openColorpicker()"> Filter </button> </td>
                    
                    
                    <td> <button class="operation-btn" onclick="makeTransparent()"> 
                            <div id="color-preview"></div>
                            Magic Eraser </button> </td>
                            
                    
                    
                </tr>
                
                <tr>
                    
                    <td colspan="3"> <button class="operation-btn download-btn" onclick="download()">Download</button> </td>
                    
                </tr>
                
            </table>
            
        </div>
            
        
        
        
        
        
        
        
        
        <script>
            var icon = document.getElementById("icon");
            icon.onclick = function (){
                document.body.classList.toggle("dark-theme");
                if(document.body.classList.contains("dark-theme")){
                    icon.src = "assets/img/sun.png";
                }else{
                    icon.src = "assets/img/moon.png";
                }
            }
            
        </script>
        <script src="assets/js/interface.js"></script>
        <script src="assets/js/javaScript.js"></script>
    </body>
</html>
