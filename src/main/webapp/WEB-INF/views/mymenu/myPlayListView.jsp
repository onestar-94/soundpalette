<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
   <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>SOUND PALETTE</title>
   
   
   <script>
   function selectAll(selectAll)  {
	   const checkboxes 
	      = document.querySelectorAll('input[type="checkbox"]');
	   
	   checkboxes.forEach((checkbox) => {
	     checkbox.checked = selectAll.checked
	   })
	 }
   </script>
</head>
<body>
<%@ include file="../main/main-top.jspf" %>

      <!-- Page Content  -->
    <div id="content-page" class="content-page">
         <div class="container-fluid">
            <div class="row">
               <div class="col-lg-12">
                  <div class="iq-card">
                     <div class="iq-card-body">
                       <div class="row">
                        <div class="col-lg-4">
                           <img src="/palette/resources/images/page-img/0.jpg"" class="rounded ml-3" alt="Responsive image" style=" width: 80%;">
                        </div>
                        <div class="col-lg-8">
                           <div class="d-flex align-items-top justify-content-between iq-music-play-detail">
                              <div class="music-detail">
                                 <h3>플레이리스트 이름</h3>
                                 <span>아티스트</span>
                                 <p >몇곡 있는지?</p>
                                 <div class="d-flex align-items-center">                                       
                                    <a href="javascript:void(0);" class="btn btn-primary iq-play mr-2">재생</a>
                                 </div>
                              </div>
                              <div class="music-right">
                                 <div class="d-flex align-items-center">
                                    <div class="iq-circle mr-2"><a href="javascript:void();"><i class="ri-heart-fill  text-primary"></i></a></div> 
                                 </div>
                                 </div>
                              </div>
                              </div>
                           </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
         
         
         <table class="table">
						<thead align="center">
							<tr>
								<th scop="col" width="10%">
									<div class="custom-control custom-checkbox custom-control-inline" style="padding-top:6px">
                              			<input type="checkbox" class="custom-control-input" id="customCheck_All" onclick="selectAll(this)">
                             			<label class="custom-control-label" for="customCheck_All"></label>
                           			</div>
                             	</th>
								<th scope="col" width="5%">No</th>
								<th scope="col" width="10%">이미지</th>
								<th scope="col" width="25%">곡명</th>
								<th scope="col" width="10%">재생시간</th>
								<th scope="col" width="10%">아티스트</th>
								<th scope="col" width="5%">좋아요</th>
								<th scople="col" width="5%">듣기</th>
								<th scople="col" width="12%">순서</th>
								<th scople="col" width="8%">삭제</th>
							</tr>
						</thead>
						<tbody align="center">
							<tr>
								<th>
									<div class="custom-control custom-checkbox custom-control-inline" style="padding-top:6px">
                              			<input type="checkbox" class="custom-control-input" id="customCheck_1">
                             			<label class="custom-control-label" for="customCheck_1"></label>
                           			</div>
                             	</th>
								<th scope="row">1</th>
								<td>
                                    <img src="/palette/resources/images/dashboard/realease-song/0.jpg"" class="img-fluid avatar-50 rounded" alt="author-profile">
                                </td>
								<td>라일락</td>
								<td>3:29</td>
								<td>아이유(IU)</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-heart" style="padding-top:10px"></i></a>
                              		</div>
								</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-play" style="padding-top:10px"></i></a>
                              		</div>
								</td>
								<td>
										<a class="iq-icons-list" href="#" >
                                    <div data-icon="n" class="icon"></div></a>
                                    	<a class="iq-icons-list" href="#" >
                                    <div data-icon="k" class="icon"></div></a>
                                 
								</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#" onclick="confirm('삭제 하시겠습니까?')"><i class="ion-close-circled" style="padding-top:10px"></i></a>
                              		</div>
								</td>
							</tr>
							<tr>
								<th>
									<div class="custom-control custom-checkbox custom-control-inline">
                              			<input type="checkbox" class="custom-control-input" id="customCheck2">
                             			<label class="custom-control-label" for="customCheck2"></label>
                           			</div>
                             	</th>
								<th scope="row">2</th>
								<td>
                                    <img src="/palette/resources/images/dashboard/realease-song/iur.jpg" class="img-fluid avatar-50 rounded" alt="author-profile">
                                </td>
								<td>celebrity</td>
								<td>3:29</td>
								<td>아이유(IU)</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-heart"></i></a>
                              		</div>
								</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-play"></i></a>
                              		</div>
								</td>
								<td>
										<a class="iq-icons-list" href="#">
                                    <div data-icon="n" class="icon"></div></a>
                                    	<a class="iq-icons-list" href="#">
                                    <div data-icon="k" class="icon"></div></a>
                                 
								</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#" onclick="confirm('삭제 하시겠습니까?')"><i class="ion-close-circled"></i></a>
                              		</div>
								</td>
							</tr>
							<tr>
								<th>
									<div class="custom-control custom-checkbox custom-control-inline">
                              			<input type="checkbox" class="custom-control-input" id="customCheck3">
                             			<label class="custom-control-label" for="customCheck3"></label>
                           			</div>
                             	</th>
								<th scope="row">3</th>
								<td>
                                    <img src="/palette/resources/images/dashboard/realease-song/q.jpg" class="img-fluid avatar-50 rounded" alt="author-profile">
                                </td>
								<td>내손을 잡아</td>
								<td>3:29</td>
								<td>아이유(IU)</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-heart"></i></a>
                              		</div>
								</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#"><i class="ion-play"></i></a>
                              		</div>
								</td>
								<td>
										<a class="iq-icons-list" href="#">
                                    <div data-icon="n" class="icon"></div></a>
                                    	<a class="iq-icons-list" href="#">
                                    <div data-icon="k" class="icon"></div></a>
                                 
								</td>
								<td>
									<div>
                                 		<a class="iq-icons-list" href="#" onclick="confirm('삭제 하시겠습니까?')"><i class="ion-close-circled"></i></a>
                              		</div>
								</td>
							</tr>
						</tbody>
					</table>
				
      </div>
   </div>
</div>
</div>
<!-- Wrapper END -->
<!-- color-customizer -->
      <div class="iq-colorbox color-fix">
         <div class="clearfix color-picker">
            <h3 class="iq-font-black">music Awesome Color</h3>
            <p>This color combo available inside whole template. You can change on your wish, Even you can create your own with limitless possibilities! </p>
            <ul class="iq-colorselect clearfix">
               <li class="color-1 iq-colormark" data-style="color-1"></li>
               <li class="color-2" data-style="iq-color-2"></li>
               <li class="color-3" data-style="iq-color-3"></li>
               <li class="color-4" data-style="iq-color-4"></li>
               <li class="color-5" data-style="iq-color-5"></li>
               <li class="color-6" data-style="iq-color-6"></li>
               <li class="color-7" data-style="iq-color-7"></li>
               <li class="color-8" data-style="iq-color-8"></li>
               <li class="color-9" data-style="iq-color-9"></li>
               <li class="color-10" data-style="iq-color-10"></li>
               <li class="color-11" data-style="iq-color-11"></li>
               <li class="color-12" data-style="iq-color-12"></li>
               <li class="color-13" data-style="iq-color-13"></li>
               <li class="color-14" data-style="iq-color-14"></li>
               <li class="color-15" data-style="iq-color-15"></li>
               <li class="color-16" data-style="iq-color-16"></li>
               <li class="color-17" data-style="iq-color-17"></li>
               <li class="color-18" data-style="iq-color-18"></li>
               <li class="color-19" data-style="iq-color-19"></li>
               <li class="color-20" data-style="iq-color-20"></li>
            </ul>
            <a target="_blank" class="btn btn-primary d-block mt-3" href="https://themeforest.net/item/muzik-music-streaming-admin-template/27967164">Purchase Now</a>
         </div>
      </div>
      
      <%@ include file="../main/main-Footer.jspf" %>
    
</body>
</html>