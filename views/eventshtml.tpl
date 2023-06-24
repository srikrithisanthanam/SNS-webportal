% rebase('layout.tpl', title=title, year=year,username=username, ty=ty, fname=fname,r=r)
<style>
    body {
  margin: 40px;
}

.wrapper {
  display: grid;
  grid-template-columns: 100px 100px 100px;
  grid-gap: 10px;
  background-color: #ffff;
  color: #444;
}

.box {
  background-color: 	#D3D3D3;
  color: #000000;
  border-radius: 5px;
  padding: 20px;
  font-size: 150%;
}

.a {
        grid-column-start: 2;
        grid-column-end: 10;
        grid-row-start: 1;
        grid-row-end: 2;
    }
    .b {
        grid-column-start: 2;
        grid-column-end: 3;
        grid-row-start: 2;
        grid-row-end: 3;
    }
    .c {
        grid-column-start: 3;
        grid-column-end: 4;
        grid-row-start: 2;
        grid-row-end: 3;
    }
    .d {
        grid-column-start: 1;
        grid-column-end: 2;
        grid-row-start: 1;
        grid-row-end: 2;
    }
    .e {
        grid-column-start: 1;
        grid-column-end: 2;
        grid-row-start: 2;
        grid-row-end: 3;
    }
    .f {
        grid-column-start: 3;
        grid-column-end: 4;
        grid-row-start: 1;
        grid-row-end: 2;
    }
</style>
%for i in range(len(r)):
    <div class="wrapper">
      <div class="box a"><b><center>{{r[i][0]}}</b></center><br>
      <b>Date:</b>{{r[i][4]}}</b><br>
      <b>Place:</b>{{r[i][2]}}<br>
      <b>Time:</b>{{r[i][3]}}<br>
      <font size=3>{{r[i][5]}}<br></font>
      </div>
    </div>
    <br>

