<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ title }} - Heritage and originations of cultures, language, traditions</title>
    <link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/content/site.css" />
    <link rel="stylesheet" type="text/css" href="/static/content/login.css" />
    <script src="/static/scripts/modernizr-2.6.2.js"></script>
</head>

<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="/home" class="navbar-brand"><font face="courier" size=5>S N S</font></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    % if ty != None and ty[0] == "3":
                    <li><a href="/heritage">Heritage</a></li>
                    % end
                    % if ty != None and len(ty) > 1 and (ty[0] == "2" or ty[1] == "2"):
                    <li><a href="/dance">Dance</a></li>
                    % end
                    % if ty != None and ((len(ty) == 1 and ty[0] == "1") or (len(ty) > 1 and ty[1] == "1") or (len(ty) > 2 and ty[2] == "1")):
                    <li><a href="/music">Music</a></li>
                    % end
                    <li><a href="/select">Profile</a></li>
                    % if username!= None and username=="admin@gmail.com":
                    <li><a href="/eventform">Event Data Form</a></li>
                    % end
                    <li><a href="/events">Events</a></li>
                    <li><a href="/contact">Contact</a></li>
                    <li><a href="/logout">Logout</a></li>
                    <li></li>
                    <li><p style="color:white"> Hello,        {{ fname }}</p></li>
                </ul>
            </div>

        </div>
    </div>
    <div class="container body-content">
        {{!base}}
        <hr />
        <footer>
            <p>&copy; {{ year }} - Cultural Heritage</p>
        </footer>
    </div>

    <script src="/static/scripts/jquery-1.10.2.js"></script>
    <script src="/static/scripts/bootstrap.js"></script>
    <script src="/static/scripts/respond.js"></script>

</body>
</html>
