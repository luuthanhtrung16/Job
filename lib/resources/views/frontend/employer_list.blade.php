@extends('frontend.master')
@section('title','Employer_list')
@section('content')
    <ol class="breadcrumb justify-content-left">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Employer List</li>
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
                            <h3 class="j-b mb-3">Specialism</h3>
                            <ul class="list-group candidate-page">
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Accountancy (2)</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Banking (2)</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Charity & Voluntary (3)</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Digital & Creative (4)</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Estate Agency (3)</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Graduate (2)</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> IT Contractor (7)</li>
                            </ul>
                        </div>
                        <div class="col_3 experience">
                            <h3 class="j-b mb-3">Team Size</h3>
                            <ul class="list-group candidate-page">
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 1 - 10</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 100 - 200</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 201 - 301</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 301 - 301</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 401 - 501</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 501 - 601</li>
                            </ul>
                        </div>
                        <div class="col_3 permit my-4">
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
                                    <img src="images/b1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">Comapany Name</a></h4>
                                    <h5 class="mt-2">Sales & Marketing</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">3 Open Position</a>
                            </div>
                        </div>
                        <!--// Emply List -->
                        <!--/ Emply List1 -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/b2.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">Comapany Name</a></h4>
                                    <h5 class="mt-2">Arts, Design, and Media, Web Developer</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">4 Open Position</a>
                            </div>
                        </div>
                        <!--// Emply List1 -->
                        <!--/ Emply List2 -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/b1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">
                                            Comapany Name</a></h4>
                                    <h5 class="mt-2">Arts, Design, and Media, Web Developer</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">6 Open Position</a>
                            </div>
                        </div>
                        <!--// Emply List2 -->
                        <!--/ Emply List3 -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/b2.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">
                                            Comapany Name</a></h4>
                                    <h5 class="mt-2">Arts, Design,and Web Developer</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">2 Open Position</a>
                            </div>
                        </div>
                        <!--// Emply List3 -->
                        <!--/ Emply List -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/b1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">Comapany Name</a></h4>
                                    <h5 class="mt-2">Accountancy, Human Resources</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">10 Open Position</a>
                            </div>
                        </div>
                        <!--// Emply List -->
                        <!--/ Emply List1 -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/b2.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">Comapany Name</a></h4>
                                    <h5 class="mt-2">Financial Services, Sales & Marketing</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">8 Open Position </a>
                            </div>
                        </div>
                        <!--// Emply List1 -->
                        <!--/ Emply List2 -->
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/b1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">
                                                Comapany Name</a></h4>
                                    <h5 class="mt-2">Arts, Design, and Media, Web Developer</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">4 Open Position</a>
                            </div>
                        </div>
                        <!--// Emply List2 -->
                        <!--/ Emply List3 -->
                        <div class="emply-resume-list row">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="images/b2.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">
                                                Comapany Name</a></h4>
                                    <h5 class="mt-2">Accounting Assistant, Arts, Design, and Media</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">6 Open Position</a>
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