<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Star Finder</a>
        </div>
        <form action="/search" method="post" class="navbar-form navbar-left" role="search">

            <div class="form-group">
                <input type="text" name="search" class="form-control" placeholder="Search Ads">
            </div>
            <button type="submit" class="btn btn-default glyphicon glyphicon-search"></button>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/logout">Logout</a></li>
        </ul>
        <p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link">${user.username}</a></p>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>