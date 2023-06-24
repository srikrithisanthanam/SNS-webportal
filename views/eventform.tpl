% rebase('layout.tpl', title='Home Page', year=year, username=username, fname=fname, mt=mt, ty=ty)
<html>
  <head>
    <title>Event Form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, p {
      padding: 0;
      margin: 0;
      outline: none;
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
  </head>
  <body >
    <div class="testbox">
      <form name=form2 action ="/creates" method = "post">
        <div class="jumbotron">
          <h2> Event Data Form</h2>
        </div>
        <p class="top-info">The upcoming events</p>
        <div class="item">
          <p>Event Name<span class="required">*</span></p>
          <div class="name-item">
            <input type="text" name="Event name" placeholder="event name" required/>
          </div>
        </div>
        <div class="item">
          <p>Event ID<span class="required">*</span></p>
          <input type="text" name="ID" required/>
        </div>
         <div class="item">
            <p>Place<span class="required">*</span></p>
            <input type="text" name="place" required/>
         </div>
         <div class="item">
            <p>Time<span class="required">*</span></p>
            <input type="time" name="time" required/>
         </div>
         <div class="item">
         <p>Event Date<span class="required">*</span></p>
         <input id="edate" type="date" name="event" />
         <i class="fas fa-calendar-alt"></i>
       </div>
        <div class="item">
          <p>Event Description<span class="required">*</span></p>
          <input type="text" name="Event Description" placeholder="Event Description" required/>
        </div>
        <div class="item">
          <p>Phone No</p>
          <input type="text" name="phone"/>
        </div>
        <div class="question">
          <p>Event Type<span class="required">*</span></p>
          <div class="question-answer">
            <label><input type="radio" value="heritage" name="etype" id ="Heritage" required onclick="resetsubType()"/> <span>Heritage</span></label>
            <label><input type="radio" value="dance" name="etype" id ="Dance"  required onclick="resetsubType()"/> <span>Dance</span></label>
            <label><input type="radio" value="music" name="etype" id ="Music"  required onclick="resetsubType()"/> <span>Music</span></label>
          </div>
        </div>
        <div id=msg></div>
        <div class="btn-block">
          <button type="submit">Apply</button>
        </div>
      </form>
    </div>
  </body>
</html>