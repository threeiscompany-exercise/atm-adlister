<nav class="navbar-inverse">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Star Finder</a>
        </div>
        <form action="/search" method="post" class="navbar-form navbar-left" role="search">

            <div class="form-group">
                <input type="text" name="search" class="form-control" placeholder="Search Ads">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div>
</nav>
