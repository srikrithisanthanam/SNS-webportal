% rebase('layout.tpl', title=title, record=record, year=year)
<html>
  <head>
    <title>SNS Heritage Club Membership Form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, p {
      padding: 0;
      margin: 0;
      outline: none;f
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 36px;
      color: #000000;
      z-index: 2;
      }
      span.required {
      color: red;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 30px 0 #095484;
      }
      .banner {
      position: relative;
      height: 180px;
      background-image: url("/uploads/media/default/0001/01/9e07ce3a601795a5ac09a66a0c1fc8978e0ee51a.jpeg");
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: #eee;
      position: absolute;
      width: 100%;
      height: 100%;
      }
      p.top-info {
      margin: 10px 0;
      }
      input, select {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      select {
      width: 100%;
      padding: 7px 0;
      background: transparent;
      }
      .item:hover p, .question:hover p, .question label:hover, input:hover::placeholder {
      color: #095484;
      }
      .item input:hover, .item select:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 5px 0 #095484;
      color: #095484;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      .question input {
      width: auto;
      margin: 0;
      border-radius: 50%;
      }
      .question input, .question span {
      vertical-align: middle;
      }
      .question label {
      display: inline-block;
      margin: 5px 20px 15px 0;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px;
      background: #3276b1;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background: #0666a3;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .city-item input {
      width: calc(50% - 20px);
      }
      .city-item select {
      width: calc(50% - 8px);
      }
      }
      .select2-result-label .wrap:before{
          position:absolute;
          left:4px;
          font-family:fontAwesome;
          color:#999;
          content:"\f096";
          width:25px;
          height:25px;

      }
      .select2-result-label .wrap.checked:before{
          content:"\f14a";
      }
      .select2-result-label .wrap{
          margin-left:15px;
      }

      /* not required css */

      .row
      {
        padding: 10px;
      }
    </style>
    <script>
    var count = 0;
    var sum=0;
    function resetsubType() {
        document.getElementById('heritage').checked = false;
        document.getElementById('dance').checked = false;
        document.getElementById('music').checked = false;
        if(document.getElementById('planitinum').checked)
          count = 3;
        if(document.getElementById('gold').checked)
          count = 2;
        if(document.getElementById('silver').checked)
           count = 1;
        sum=0;
    }
     function chkHeritagecontrol() {
            if(document.form1.heritage.checked){
            sum = sum + parseInt(document.form1.heritage.value);
            } else {
            sum = sum - 1;
            }
            if(sum > count){
            sum = sum - parseInt(document.form1.heritage.value);
            document.form1.heritage.checked = false ;
            alert("Sum of the selection can't be more than "+count)
            //return false;
            }
        }
         function chkDancecontrol() {
            if(document.form1.dance.checked){
            sum = sum + parseInt(document.form1.dance.value);
            } else {
            sum = sum - 1;
            }
            if(sum > count){
            sum = sum - parseInt(document.form1.dance.value);
            document.form1.dance.checked = false ;
            alert("Sum of the selection can't be more than "+count)
            //return false;
            }
         }
        function chkMusiccontrol() {
            if(document.form1.music.checked){
            sum = sum + parseInt(document.form1.music.value);
            } else {
            sum = sum - 1;
            }
            if(sum > count){
            sum = sum - parseInt(document.form1.music.value);
            document.form1.music.checked = false ;
            alert("Sum of the selection can't be more than "+count)
            //return false;
            }
        }


    function updateFun() {
      var vfemale = '{{record[3]}}';
      var vCountry = '{{record[10]}}';
      var vmt = '{{record[11]}}';
      var mst = '{{record[12]}}';

      if(mst.includes('3'))
        document.getElementById('heritage').checked = true;
      if(mst.includes('2'))
        document.getElementById('dance').checked = true;
      if(mst.includes('1'))
        document.getElementById('music').checked = true;

      if(vfemale == 'male')
        document.getElementById("male").checked = true;
      else
        document.getElementById("female").checked = true;
      if(vmt.includes('Planitinum'))
        document.getElementById('planitinum').checked=true;
      if(vmt.includes('Gold'))
        document.getElementById('gold').checked=true;
      if(vmt.includes('Silver'))
        document.getElementById('silver').checked=true;
    }


    </script>
  </head>
  <body onload="updateFun()">
    <div class="testbox">
      <form name=form1 action ="/update" method = "post">
      <form name=form1 action ="/delete" method = "post">
        <div class="jumbotron">
          <h2>SNS Heritage Club Membership Form</h2>
        </div>
        <p class="top-info">Want to become a member of our SNS Heritage Club ? Then start by filling our form to complete registration and login with your email Id and password.</p>
        <div class="item">
          <p>Name<span class="required">*</span></p>
          <div class="name-item">
            <input type="text" name="first_name" placeholder="First" value="{{record[0]}}" required/>
            <input type="text" name="last_name" placeholder="Last" value="{{record[1]}}" required/>
          </div>
        </div>
        <div class="item">
          <p>Email<span class="required">*</span></p>
          <input type="text" name="email" value="{{record[2]}}" required readonly />
        </div>
        <div class="question">
          <p>Gender<span class="required">*</span></p>
          <div class="question-answer">
            <label><input type="radio" value="male" id="male" name="gender" required/> <span>Male</span></label>
            <label><input type="radio" value="female" id="female" name="gender" required/> <span>Female</span></label>
          </div>
        </div>
         <div class="item">
            <p>Password<span class="required">*</span></p>
            <input type="password" name="pwd" value="{{record[13]}}" required/>
         </div>
         <div class="item">
         <p>Birth Date<span class="required">*</span></p>
         <input id="bdate" type="date" name="birthday" value="{{record[5]}}" />
         <i class="fas fa-calendar-alt"></i>
       </div>
        <div class="item">
          <p>Home Address<span class="required">*</span></p>
          <input type="text" name="street" placeholder="Street address" value="{{record[6]}}" required/>
          <div class="city-item">
            <input type="text" name="city" placeholder="City" value="{{record[7]}}" required/>
            <input type="text" name="region" placeholder="Region" value="{{record[8]}}" required/>
            <input type="text" name="pc" placeholder="Postal / Zip code" value="{{record[9]}}" required/>
            <input type="text" name="country" id="country" placeholder="Country" value="{{record[10]}}" required/>
          </div>
        </div>
        <div class="item">
          <p>Phone</p>
          <input type="text" name="phone" value="{{record[4]}}"/>
        </div>
        <div class="question">
          <p>Membership Type<span class="required">*</span></p>
          <div class="question-answer">
            <label><input type="radio" value="Planitinum" name="membership" id ="planitinum" required onclick="resetsubType()"/> <span>Planitinum</span></label>
            <label><input type="radio" value="Gold" name="membership" id ="gold"  required onclick="resetsubType()"/> <span>Gold</span></label>
            <label><input type="radio" value="Silver" name="membership" id ="silver"  required onclick="resetsubType()"/> <span>Silver</span></label>
          </div>
        </div>
        <div class="question">
          <p>Membership sub Type<span class="required">*</span></p>
          <div class="question-answer">
            <table class='table table-striped' >
            <tr ><th >Select</th></tr>
            <tr ><td ><input type=checkbox name=heritage id=heritage value=1 onclick='chkHeritagecontrol()';> Heritage </td></tr>
            <tr><td ><input type=checkbox name=dance id=dance value=1 onclick='chkDancecontrol()';> Dance </td></tr>
            <tr  ><td ><input type=checkbox name=music id=music value=1 onclick='chkMusiccontrol()';> Music </td></tr>
            </table>
          </div>
        </div>
        <div id=msg></div>
        <div class="btn-block">
          <button type="submit">Update</button>
        </div>
      </form>
    </div>
  </body>
</html>