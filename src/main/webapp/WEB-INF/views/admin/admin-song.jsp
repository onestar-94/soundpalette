<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SOUND PALETTE</title>
 
﻿
</head>
<body>
<%@ include file="../main/main-top.jspf" %>

      <!-- Page Content  -->
      <div id="content-page" class="content-page">
         <div class="container-fluid">
            <div class="row">
               <div class="col-sm-12">
                  <div class="iq-card">
                     <div class="iq-card-header d-flex justify-content-between">
                        <div class="iq-header-title">
                           <h4 class="card-title">관리자 플레이리스트</h4>
                        </div>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-xl">PlayList 추가</button>
                           <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog"   aria-hidden="true">
                              <div class="modal-dialog modal-xl">
                                 <div class="modal-content">
                                    <div class="modal-header">
                                       <h5 class="modal-title">플레이리스트 추가</h5>
                                       <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                       <span aria-hidden="true">&times;</span>
                                       </button>
                                    </div>
                                    <div class="modal-body">
                                       <form action="/palette/SOPA/admin/admin-song">
                           					<div class="form-group">
                             				<label>PlayList Title</label>
                            				<input type="text" class="form-control">
                         			</div>
                         			<div class="form-group">
                             			<label>이미지 추가</label>
                            	 			<div class="custom-file">
                                 				<input type="file" class="custom-file-input" id="customFile">
                                		<label class="custom-file-label" for="customFile">파일선택</label>
                              				</div>
                           			</div>
                          			<div class="form-group">
                              			<label>관리자 플레이리스트</label>
                              			<select class="form-control" id="exampleFormControlSelect1">
                                 			<option selected="" disabled="">---플레이리스트---</option>
                                 				<option>달달한 음색과 드라이브 알앤비</option>
                                 				<option>더운 여름에 듣고 싶은 신나는 댄스곡</option>
                                 				<option>폭염을 날려버릴 시원한 ROCK</option>
                                 				<option>내 방 침대 위, 아무거도 하기 싫은 날</option>
                                 				<option>텐션을 낮출 수 없는 신나는 KPOP</option>
                                 				<option>기분좋게 즐기는 하우스&딥하우스</option>
                              			</select>
                           			</div>
                        				</form>
                                    </div>
                                    <div class="modal-footer">
                                       <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                       <button type="button" class="btn btn-primary">추가하기</button>
                                    </div>
                                 </div>
                              </div>
                           </div>
                     </div>
                     <div class="iq-card-body">
                        <div class="table-responsive">
                           <table class="data-tables table table-striped table-bordered" style="width:100%">
                              <thead>
                                 <tr style="text-align:center;">
                                    <th style="width: 5%;">NO</th>
                                    <th style="width: 5%;">Image</th>
                                    <th style="width: 15%;">PlayList Title</th>
                                    <th style="width: 10%;">Total Song</th>
                                    <th style="width: 10%;">Create Date</th>
                                    <th style="width: 10%;">Action</th>
                                 </tr>
                              </thead>
                              <tbody align="center">
                                 <tr>
                                    <td>1</td>
                                    <td>
                                       <img src="/palette/resources/images/dashboard/feature-album/playList.jpg" class="img-fluid avatar-50 rounded" alt="author-profile">
                                    </td>
                                    <td><a href="/palette/SOPA/myPage/playList">달달한 음색과 드라이브 알앤비</a></td>
                                    <td>총20곡</td>
                                    <td>2019.09.30</td>
                                    <td>
                                       <div class="flex align-items-center list-user-action">
                                     	  <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="추가" href="#"><i class="ion-plus-circled"></i></a>
                                          <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="삭제" href="#"><i class="ri-delete-bin-line"></i></a>
                                       </div>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td>2</td>
                                    <td>
                                       <img src="/palette/resources/images/dashboard/feature-album/playList.jpg" class="img-fluid avatar-50 rounded" alt="author-profile">
                                    </td>
                                    <td>더운 여름에 듣고 싶은 신나는 댄스곡</td>
                                    <td>총36곡</td>
                                    <td>2020.08.03</td>
                                    <td>
                                       <div class="flex align-items-center list-user-action">
                                     	  <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="추가" href="#"><i class="ion-plus-circled"></i></a>
                                          <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="삭제" href="#"><i class="ri-delete-bin-line"></i></a>
                                       </div>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td>3</td>
                                    <td>
                                       <img src="/palette/resources/images/dashboard/feature-album/playList.jpg" class="img-fluid avatar-50 rounded" alt="author-profile">
                                    </td>
                                     <td>폭염을 날려버릴 시원한 ROCK</td>
                                    <td>총45곡</td>
                                    <td>2021.07.29</td>
                                    <td>
                                       <div class="flex align-items-center list-user-action">
                                     	  <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="추가" href="#"><i class="ion-plus-circled"></i></a>
                                          <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="삭제" href="#"><i class="ri-delete-bin-line"></i></a>
                                       </div>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td>4</td>
                                    <td>
                                       <img src="/palette/resources/images/dashboard/feature-album/playList.jpg" class="img-fluid avatar-50 rounded" alt="author-profile">
                                    </td>
                                     <td>내 방 침대 위, 아무거도 하기 싫은 날</td>
                                    <td>총36곡</td>
                                    <td>2020.09.30</td>
                                    <td>
                                       <div class="flex align-items-center list-user-action">
                                     	  <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="추가" href="#"><i class="ion-plus-circled"></i></a>
                                          <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="삭제" href="#"><i class="ri-delete-bin-line"></i></a>
                                       </div>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td>5</td>
                                    <td>
                                       <img src="/palette/resources/images/dashboard/feature-album/playList.jpg" class="img-fluid avatar-50 rounded" alt="author-profile">
                                    </td>
                                    <td>텐션을 낮출 수 없는 신나는 KPOP</td>
                                    <td>총58곡</td>
                                    <td>2021.03.18</td>
                                    <td>
                                       <div class="flex align-items-center list-user-action">
                                     	  <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="추가" href="#"><i class="ion-plus-circled"></i></a>
                                          <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="삭제" href="#"><i class="ri-delete-bin-line"></i></a>
                                       </div>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td>6</td>
                                    <td>
                                       <img src="/palette/resources/images/dashboard/feature-album/playList.jpg" class="img-fluid avatar-50 rounded" alt="author-profile">
                                    </td>
                                     <td>기분좋게 즐기는 하우스&딥하우스</td>
                                    <td>총48곡</td>
                                    <td>2021.05.31</td>
                                    <td>
                                       <div class="flex align-items-center list-user-action">
                                     	  <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="추가" href="#"><i class="ion-plus-circled"></i></a>
                                          <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="삭제" href="#"><i class="ri-delete-bin-line"></i></a>
                                       </div>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td>7</td>
                                    <td>
                                       <img src="/palette/resources/images/dashboard/feature-album/playList.jpg" class="img-fluid avatar-50 rounded" alt="author-profile">
                                    </td>
                                     <td>요즘 핫한 뮤비 속 그때 그 아이돌들의 노래들이?</td>
                                    <td>총67곡</td>
                                    <td>2019.03.13</td>
                                    <td>
                                       <div class="flex align-items-center list-user-action">
                                     	  <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="추가" href="#"><i class="ion-plus-circled"></i></a>
                                          <a class="bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="삭제" href="#"><i class="ri-delete-bin-line"></i></a>
                                       </div>
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-12">
                  <div class="iq-card">
                     <div class="iq-card-header d-flex justify-content-between align-items-center">
                        <div class="iq-header-title">
                           <h4 class="card-title">메인화면 리스트</h4>
                        </div>
                        <div id="feature-album-slick-arrow" class="slick-aerrow-block"></div>
                     </div>
                     <div class="iq-card-body">
                        <ul class="list-unstyled row  feature-album iq-box-hover mb-0">
                           <li class="col-lg-2  iq-music-box">
                              <div class="iq-card mb-0">
                                 <div class="iq-card-body p-0">
                                    <div class="iq-thumb">
                                       <div class="iq-music-overlay"></div>
                                       <a href ="/palette/SOPA/myPage/playList">
                                          <img src="images/dashboard/feature-album/01.png" class="img-border-radius img-fluid w-100" alt="">
                                       </a>
                                       <div class="overlay-music-icon">
                                          <a href ="#this">
                                             <i class="fa fa-trash"></i>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="feature-list text-center">
                                       <h6 class="font-weight-600 mb-0">Doja Cat</h6>
                                       <p class="mb-0">Annie Lennox</p>
                                    </div>
                                 </div>
                              </div>
                           </li>
                           <li class="col-lg-2 iq-music-box">
                              <div class="iq-card mb-0">
                                 <div class="iq-card-body p-0">
                                    <div class="iq-thumb">
                                       <div class="iq-music-overlay"></div>
                                       <a href ="/palette/SOPA/myPage/playList">
                                          <img src="images/dashboard/feature-album/02.png" class="img-border-radius img-fluid w-100" alt="">
                                       </a>
                                       <div class="overlay-music-icon">
                                          <a href ="#this">
                                             <i class="fa fa-trash"></i>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="feature-list text-center">
                                       <h6 class="font-weight-600 mb-0">Justin Bieber</h6>
                                       <p class="mb-0">Sade Adu</p>
                                    </div>
                                 </div>
                              </div>
                           </li>
                           <li class="col-lg-2 iq-music-box">
                              <div class="iq-card mb-0">
                                 <div class="iq-card-body p-0">
                                    <div class="iq-thumb">
                                       <div class="iq-music-overlay"></div>
                                       <a href ="/palette/SOPA/myPage/playList">
                                          <img src="images/dashboard/feature-album/03.png" class="img-border-radius img-fluid w-100" alt="">
                                       </a>
                                      <div class="overlay-music-icon">
                                          <a href ="#this">
                                             <i class="fa fa-trash"></i>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="feature-list text-center">
                                       <h6 class="font-weight-600 mb-0">Pop Smoke </h6>
                                       <p class="mb-0">Cascada</p>
                                    </div>
                                 </div>
                              </div>
                           </li>
                           <li class="col-lg-2 iq-music-box">
                              <div class="iq-card mb-0">
                                 <div class="iq-card-body p-0">
                                    <div class="iq-thumb">
                                       <div class="iq-music-overlay"></div>
                                       <a href ="/palette/SOPA/myPage/playList">
                                          <img src="images/dashboard/feature-album/04.png" class="img-border-radius img-fluid w-100" alt="">
                                       </a>
                                       <div class="overlay-music-icon">
                                          <a href ="#this">
                                             <i class="fa fa-trash"></i>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="feature-list text-center">
                                       <h6 class="font-weight-600 mb-0">Miranda Lambert</h6>
                                       <p class="mb-0">Natasha </p>
                                    </div>
                                 </div>
                              </div>
                           </li>
                           <li class="col-lg-2 iq-music-box">
                              <div class="iq-card mb-0">
                                 <div class="iq-card-body p-0">
                                    <div class="iq-thumb">
                                       <div class="iq-music-overlay"></div>
                                       <a href ="/palette/SOPA/myPage/playList">
                                          <img src="images/dashboard/feature-album/05.png" class="img-border-radius img-fluid w-100" alt="">
                                       </a>
                                       <div class="overlay-music-icon">
                                          <a href ="#this">
                                             <i class="fa fa-trash"></i>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="feature-list text-center">
                                       <h6 class="font-weight-600 mb-0">Future Featuring</h6>
                                       <p class="mb-0">Sophie Ellis</p>
                                    </div>
                                 </div>
                              </div>
                           </li>
                           <li class="col-lg-2 iq-music-box">
                              <div class="iq-card mb-0">
                                 <div class="iq-card-body p-0">
                                    <div class="iq-thumb">
                                       <div class="iq-music-overlay"></div>
                                       <a href ="/palette/SOPA/myPage/playList">
                                          <img src="images/dashboard/feature-album/06.png" class="img-border-radius img-fluid w-100" alt="">
                                       </a>
                                       <div class="overlay-music-icon">
                                          <a href ="#this">
                                             <i class="fa fa-trash"></i>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="feature-list text-center">
                                       <h6 class="font-weight-600 mb-0">Powfu Featuring</h6>
                                       <p class="mb-0">Cheryl Cole</p>
                                    </div>
                                 </div>
                              </div>
                           </li>
                           <li class="col-lg-2 iq-music-box">
                              <div class="iq-card mb-0">
                                 <div class="iq-card-body p-0">
                                    <div class="iq-thumb">
                                       <div class="iq-music-overlay"></div>
                                       <a href ="/palette/SOPA/myPage/playList">
                                          <img src="images/dashboard/feature-album/07.png" class="img-border-radius img-fluid w-100" alt="">
                                       </a>
                                       <div class="overlay-music-icon">
                                          <a href ="#this">
                                             <i class="fa fa-trash"></i>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="feature-list text-center">
                                       <h6 class="font-weight-600 mb-0">Pop Smoke</h6>
                                       <p class="mb-0">Patricia Kaas</p>
                                    </div>
                                 </div>
                              </div>
                           </li>
                           <li class="col-lg-2 iq-music-box">
                              <div class="iq-card mb-0">
                                 <div class="iq-card-body p-0">
                                    <div class="iq-thumb">
                                       <div class="iq-music-overlay"></div>
                                       <a href ="/palette/SOPA/myPage/playList">
                                          <img src="images/dashboard/feature-album/08.png" class="img-border-radius img-fluid w-100" alt="">
                                       </a>
                                       <div class="overlay-music-icon">
                                          <a href ="#this">
                                             <i class="fa fa-trash"></i>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="feature-list text-center">
                                       <h6 class="font-weight-600 mb-0">Asylum</h6>
                                       <p class="mb-0">Shreya Ghoshal</p>
                                    </div>
                                 </div>
                              </div>
                           </li>
                           <li class="col-lg-2 iq-music-box">
                              <div class="iq-card mb-0">
                                 <div class="iq-card-body p-0">
                                    <div class="iq-thumb">
                                       <div class="iq-music-overlay"></div>
                                       <a href ="/palette/SOPA/myPage/playList">
                                          <img src="images/dashboard/feature-album/09.png" class="img-border-radius img-fluid w-100" alt="">
                                       </a>
                                       <div class="overlay-music-icon">
                                          <a href ="#this">
                                             <i class="fa fa-trash"></i>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="feature-list text-center">
                                       <h6 class="font-weight-600 mb-0">Before You Go</h6>
                                       <p class="mb-0">Lewis Capaldi</p>
                                    </div>
                                 </div>
                              </div>
                           </li>
                           <li class="col-lg-2 iq-music-box">
                              <div class="iq-card mb-0">
                                 <div class="iq-card-body p-0">
                                    <div class="iq-thumb">
                                       <div class="iq-music-overlay"></div>
                                       <a href ="/palette/SOPA/myPage/playList">
                                          <img src="images/dashboard/feature-album/08.png" class="img-border-radius img-fluid w-100" alt="">
                                       </a>
                                       <div class="overlay-music-icon">
                                          <a href ="#this">
                                             <i class="fa fa-trash"></i>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="feature-list text-center">
                                       <h6 class="font-weight-600 mb-0">Don't Start Now</h6>
                                       <p class="mb-0">Dua Lipa</p>
                                    </div>
                                 </div>
                              </div>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
         </div>
      </div>
   </div>
   <!-- Wrapper END -->
   <%@include file="../main/main-Footer.jspf" %>
   
   
   <!-- Optional JavaScript -->
   <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   
  
</body>
</html>