@extends('layouts.master')
@section('title', $title)
@section('content')


        <div class="row row-single-product">
          <div class="col-md-6">            
  
                <!-- main slider carousel -->
                <div class="row">
                    <div class="col-md-12" id="slider">
                        
                            <div class="col-md-12" id="carousel-bounding-box">
                                <div id="myCarousel" class="carousel slide">
                                    <!-- main slider carousel items -->
                                    <div class="carousel-inner">
                                        
                                        <div class="item active" data-slide-number="1">
                                          <img alt="Body Suit all in ones Leotards body &amp; bodies" src="img/collection/hegel01_big.jpg">
                                        </div>
                                        <div class="item" data-slide-number="2">
                                            <img alt="Body Suit all in ones Leotards body &amp; bodies" src="img/collection/hegel03.jpg">
                                        </div>
                                        <div class="item" data-slide-number="3">
                                            <img alt="Body Suit all in ones Leotards body &amp; bodies" src="img/collection/hegel04.jpg">
                                        </div>
                                        <div class="item" data-slide-number="4">
                                            <img alt="Body Suit all in ones Leotards body &amp; bodies" src="img/collection/hegel02.jpg">
                                        </div>
                                        
                                    </div>
                                    <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                                  <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                                </div>
                            </div>
                    </div>
                </div>
                <!--/main slider carousel-->
                
                <!-- thumb navigation carousel -->
                <div class="col-md-12" id="slider-thumbs">
                    
                    <!-- thumb navigation carousel items -->
                      <ul class="list-inline">
                        <li> <a id="carousel-selector-0" class="selected">
                          <img alt="Body Suit all in ones Leotards body &amp; bodies" src="img/collection/thumb/hegel01.jpg" class="img-responsive">
                        </a></li>
                        <li> <a id="carousel-selector-1">
                          <img alt="Body Suit all in ones Leotards body &amp; bodies" src="img/collection/thumb/hegel03.jpg" class="img-responsive">
                        </a></li>
                        <li> <a id="carousel-selector-2">
                          <img alt="Body Suit all in ones Leotards body &amp; bodies" src="img/collection/thumb/hegel04.jpg" class="img-responsive">
                        </a></li>
                        <li> <a id="carousel-selector-3">
                          <img alt="Body Suit all in ones Leotards body &amp; bodies" src="img/collection/thumb/hegel02.jpg" class="img-responsive">
                        </a></li>
                      </ul>                    
                </div>

                <div class="row">
                  <div class="col-xs-12">
                    <h1>Hegel</h1>
                    <span class="price">€190,00</span>
                  </div>
                </div>

                <div class="row">
                  <div class="col-sm-12 collapse-col">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                      <div class="panel panel-default" id="panel1">
                        <div class="panel-heading" role="tab" id="headingOne">
                          <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                              DETAILS
                              <img style="transform: rotate(45deg);" src="img/cross.png" alt="">
                            </a>
                          </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                          <div class="panel-body">
                            Neoprene on the top and cady on the bottom                            

                          </div>
                        </div>
                      </div>
                      <div class="panel panel-default" id="panel2">
                        <div class="panel-heading" role="tab" id="headingTwo">
                          <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                             SIZES
                             <img src="img/cross.png" alt="">
                            </a>
                          </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                          <div class="panel-body">
                            Standard italian size<br>
                            38 – 40 – 42 – 44 - 46 – 48
                            <br>
                            <br>

                            <i>In case you need a smaller or larger size than the ones listed above, please include it in your message</i>                           
                            
                          </div>
                        </div>
                      </div>
                      <div class="panel panel-default" id="panel3">
                        <div class="panel-heading" role="tab" id="headingThree">
                          <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                              COLOURS
                              <img src="img/cross.png" alt="">
                            </a>
                          </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                          <div class="panel-body">
                            - Black and ivory white<br>
                            - Black and black


                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-xs-12">
                    <p><i>The model’s height is 184 cm – she is wearing a size 40</i></p>
                  </div>
                </div>






          </div><!-- end of col -->

            <div class="col-md-6 sidebar">
           <div class="theiaStickySidebar">
              <h2>Order this product</h2>
              <p>Please fill in the following box to see if the item you would like to order is available.</p>
             <div class="cfgen-form-container" id="cfgen-form-4">

                <div class="cfgen-form-content">
                
                <div class="row">
                <div class="col-sm-6">
                <div class="cfgen-e-c">

                  <label class="cfgen-label" id="cfgen-element-4-6-label" ><span style="display: none;" class="cfgen-label-value">First name</span><span class="cfgen-required"></span></label>

                  <div class="cfgen-e-set" id="cfgen-element-4-6-set-c">
                    <div class="cfgen-input-group" id="cfgen-element-4-6-inputgroup-c">
                      <div class="cfgen-input-c" id="cfgen-element-4-6-input-c">
                        <input type="text" placeholder="First name" class="cfgen-type-text cfgen-form-value " name="cfgen-element-4-6" id="cfgen-element-4-6">
                      </div>
                    </div>
                  </div>

                  <div class="cfgen-clear"></div>

                </div>

                </div>
                <div class="col-sm-6">

                <div class="cfgen-e-c">

                  <label class="cfgen-label" id="cfgen-element-4-7-label" ><span style="display: none;" class="cfgen-label-value">Last name</span><span class="cfgen-required"></span></label>

                  <div class="cfgen-e-set" id="cfgen-element-4-7-set-c">
                    <div class="cfgen-input-group" id="cfgen-element-4-7-inputgroup-c">
                      <div class="cfgen-input-c" id="cfgen-element-4-7-input-c">
                        <input type="text" placeholder="Last name" class="cfgen-type-text cfgen-form-value " name="cfgen-element-4-7" id="cfgen-element-4-7">
                      </div>
                    </div>
                  </div>

                  <div class="cfgen-clear"></div>

                </div>
                
                </div>
                </div>

                <div class="cfgen-e-c">

                  <label class="cfgen-label" id="cfgen-element-4-8-label" ><span style="display: none;" class="cfgen-label-value">Email address</span><span class="cfgen-required"></span></label>

                  <div class="cfgen-e-set" id="cfgen-element-4-8-set-c">
                    <div class="cfgen-input-group" id="cfgen-element-4-8-inputgroup-c">
                      <div class="cfgen-input-c" id="cfgen-element-4-8-input-c">
                        <input type="text" placeholder="Email" class="cfgen-type-email cfgen-form-value " name="cfgen-element-4-8" id="cfgen-element-4-8">
                      </div>
                    </div>
                  </div>

                  <div class="cfgen-clear"></div>
          
                </div>


                <div class="cfgen-e-c">

                  <label class="cfgen-label" id="cfgen-element-4-9-label" ><span style="display: none;" class="cfgen-label-value">Name of the body</span><span class="cfgen-required"></span></label>

                  <div class="cfgen-e-set" id="cfgen-element-4-9-set-c">
                    <div class="cfgen-input-group" id="cfgen-element-4-9-inputgroup-c">
                      <div class="cfgen-input-c" id="cfgen-element-4-9-input-c">
                        <input type="text" placeholder="Name of the body" class="cfgen-type-text cfgen-form-value " name="cfgen-element-4-9" id="cfgen-element-4-9">
                      </div>
                    </div>
                  </div>

                  <div class="cfgen-clear"></div>

                </div>

                <div class="row">
                <div class="col-sm-6">

                <div class="cfgen-e-c">

                  <label class="cfgen-label" id="cfgen-element-4-10-label" ><span style="display: none;" class="cfgen-label-value">Size</span></label>

                  <div class="cfgen-e-set" id="cfgen-element-4-10-set-c">
                    <div class="cfgen-input-group" id="cfgen-element-4-10-inputgroup-c">
                      <div class="cfgen-input-c" id="cfgen-element-4-10-input-c">
                        <input type="text" placeholder="Size" class="cfgen-type-text cfgen-form-value " name="cfgen-element-4-10" id="cfgen-element-4-10">
                      </div>
                    </div>
                  </div>

                  <div class="cfgen-clear"></div>

                </div>
                
                </div>
                <div class="col-sm-6">

                <div class="cfgen-e-c">

                  <label class="cfgen-label" id="cfgen-element-4-11-label" ><span style="display: none;" class="cfgen-label-value">Colour</span></label>

                  <div class="cfgen-e-set" id="cfgen-element-4-11-set-c">
                    <div class="cfgen-input-group" id="cfgen-element-4-11-inputgroup-c">
                      <div class="cfgen-input-c" id="cfgen-element-4-11-input-c">
                        <input type="text" placeholder="Colour" class="cfgen-type-text cfgen-form-value " name="cfgen-element-4-11" id="cfgen-element-4-11">
                      </div>
                    </div>
                  </div>

                  <div class="cfgen-clear"></div>

                </div>
                
                </div>
                </div>

                <div class="cfgen-e-c">

                  <label class="cfgen-label" id="cfgen-element-4-12-label" ><span style="display: none;" class="cfgen-label-value">Message</span></label>

                  <div class="cfgen-e-set" id="cfgen-element-4-12-set-c">
                    <div class="cfgen-input-group" id="cfgen-element-4-12-inputgroup-c">
                      <div class="cfgen-input-c" id="cfgen-element-4-12-input-c">
                        <textarea class="cfgen-type-textarea cfgen-form-value" placeholder="Message - English or italian" name="cfgen-element-4-12" id="cfgen-element-4-12"></textarea>
                      </div>
                    </div>
                  </div>

                  <div class="cfgen-clear"></div>

                </div>


                <div class="cfgen-e-c">

                  <label class="cfgen-label" id="cfgen-element-4-13-label" ><span style="display: none;" class="cfgen-label-value">Captcha: type the characters below</span></label>

                  <div class="cfgen-e-set" id="cfgen-element-4-13-set-c">
                    <div class="cfgen-captcha-c">
                      <img src="cfgen-form-4/inc/captcha.php" class="cfgen-captcha-img" alt="" ><img src="cfgen-form-4/img/captcha-refresh.png" class="cfgen-captcha-refresh" alt="">
                    </div>
                    <div class="cfgen-input-group" id="cfgen-element-4-13-inputgroup-c">
                      <div class="cfgen-input-c" id="cfgen-element-4-13-input-c">
                        <input type="text" placeholder="captcha" name="cfgen-element-4-13" id="cfgen-element-4-13" class="cfgen-captcha-input">
                      </div>
                    </div>
                  </div>

                  <div class="cfgen-clear"></div>

                </div>


                <div class="cfgen-e-c">

                  <div class="cfgen-e-set" id="cfgen-element-4-14-set-c">
                    <div class="cfgen-input-group" id="cfgen-element-4-14-inputgroup-c">
                      <div class="cfgen-input-c" id="cfgen-element-4-14-input-c">
                        <input type="submit" class="cfgen-submit" name="cfgen-element-4-14" id="cfgen-element-4-14" value="Send">
                      </div>
                    </div>
                  </div>

                </div>


                <div class="cfgen-loading"></div>

                </div><!-- cfgen-form-content -->

                </div><!-- cfgen-form-container -->

           </div>
          </div><!-- end of sidebar -->
        </div>

@stop