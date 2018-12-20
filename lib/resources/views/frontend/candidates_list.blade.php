@extends('frontend.master')
@section('title','Candidates_list')
@section('content')
    <ol class="breadcrumb justify-content-left">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Candidate List</li>
    </ol>
    <!-- banner-text -->
    <!--/process-->
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
			<!---728x90--->
                <h3 class="tittle text-center mb-lg-4 mb-3">
                    <span>Some Info</span>All Candidates</h3>
					<!---728x90--->
                <div class="row choose-main mt-5">
                    <div class="col-lg-4 job_info_right">
                        <div class="widget_search">
                            <h3 class="j-b mb-3">Search</h3>
                            <div class="widget-content">
                                <form action="#" method="post">
                                    <div class="form-group">
                                        <label class="mb-2">I'm looking for a ...</label>

                                        <select class="form-control jb_1">
                                            <option value="0">Job</option>
                                            <option value="">Category1</option>
                                            <option value="">Category2</option>
                                            <option value="">Category3</option>
                                            <option value="">Category4</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label class="mb-2">in</label>

                                        <input type="text" class="form-control jb_2" placeholder="Location" required="">
                                    </div>
                                    <div class="form-group mb-3">
                                        <input type="text" class="form-control jb_2" placeholder="Industry / Role" required="">
                                    </div>
                                    <input type="submit" value="Search">
                                </form>
                            </div>
                        </div>
                        <div class="col_3 permit my-4">
                            <h3 class="j-b mb-3">Jobs by Category</h3>
                            <ul class="list_2">
                                <li>
                                    <a href="#">Railway Recruitment</a>
                                </li>
                                <li>
                                    <a href="#">Air Force Jobs</a>
                                </li>
                                <li>
                                    <a href="#">Police Jobs</a>
                                </li>
                                <li>
                                    <a href="#">Intelligence Bureau Jobs</a>
                                </li>
                                <li>
                                    <a href="#">Army Jobs</a>
                                </li>
                                <li>
                                    <a href="#">Navy Jobs</a>
                                </li>
                                <li>
                                    <a href="#">BSNL Jobs</a>
                                </li>
                                <li>
                                    <a href="#">Software Jobs</a>
                                </li>
                                <li>
                                    <a href="#">Research Jobs</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col_3 permit">
                            <h3 class="j-b mb-3">Offerd Salary</h3>
                            <ul class="list-group candidate-page">
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 10k - 20k</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 20k - 30k</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 30k - 40k</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 40k - 50k</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 50k - 60k</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 60k - 70k</li>
                            </ul>
                        </div>
                        <div class="col_3 experience my-4">
                            <h3 class="j-b mb-3">Work Experiance</h3>
                            <ul class="list-group candidate-page">
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 1Year to 2Year</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 2Year to 3Year</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 3Year to 4Year</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 4Year to 5Year</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 5Year to 6Year</li>
                            </ul>
                        </div>
                        <div class="col_3 permit">
                            <h3 class="j-b mb-3">Work Permit</h3>
                            <ul class="list-group candidate-page">
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Full Time</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Prt Time</li>

                            </ul>
                        </div>

                    </div>
                    <div class="col-lg-8 job_info_left">
                        <!--/ Emply List -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/team1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="candidates_single.html">Richard Thomas</a></h4>
                                    <h5 class="mt-2"><span>UX / UI Designer</span> at Company Name</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="candidates_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="candidates_single.html">Shortlist </a>
                            </div>
                        </div>
                        <!--// Emply List -->
                        <!--/ Emply List1 -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/team2.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="candidates_single.html">Tammy Dixon</a></h4>
                                    <h5 class="mt-2"><span>Sales / Marketing </span> at Company Name</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="candidates_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="candidates_single.html">Shortlist </a>
                            </div>
                        </div>
                        <!--// Emply List1 -->
                        <!--/ Emply List2 -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/team3.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="candidates_single.html">
                                                Asron Bailey</a></h4>
                                    <h5 class="mt-2"><span>Web Developer </span> at Company Name</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="candidates_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="candidates_single.html">Shortlist </a>
                            </div>
                        </div>
                        <!--// Emply List2 -->
                        <!--/ Emply List3 -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/team4.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="candidates_single.html">
                                                Asron Bailey</a></h4>
                                    <h5 class="mt-2"><span>Graphic Designer </span> at Company Name</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="candidates_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="candidates_single.html">Shortlist </a>
                            </div>
                        </div>
                        <!--// Emply List3 -->
                        <!--/ Emply List -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/team1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="candidates_single.html">Richard Thomas</a></h4>
                                    <h5 class="mt-2"><span>UX / UI Designer</span> at Company Name</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="candidates_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="candidates_single.html">Shortlist </a>
                            </div>
                        </div>
                        <!--// Emply List -->
                        <!--/ Emply List1 -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/team2.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="candidates_single.html">Tammy Dixon</a></h4>
                                    <h5 class="mt-2"><span>Sales / Marketing </span> at Company Name</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="candidates_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="candidates_single.html">Shortlist </a>
                            </div>
                        </div>
                        <!--// Emply List1 -->
                        <!--/ Emply List2 -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/team3.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="candidates_single.html">
                                                    Asron Bailey</a></h4>
                                    <h5 class="mt-2"><span>Web Developer </span> at Company Name</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="candidates_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="candidates_single.html">Shortlist </a>
                            </div>
                        </div>
                        <!--// Emply List2 -->
                        <!--/ Emply List3 -->
                        <div class="emply-resume-list row">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/team4.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="candidates_single.html">
                                                    Asron Bailey</a></h4>
                                    <h5 class="mt-2"><span>Graphic Designer </span> at Company Name</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="candidates_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="candidates_single.html">Shortlist </a>
                            </div>
                        </div>
                        <!--// Emply List3 -->
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--//preocess-->
<!---728x90--->
   @stop