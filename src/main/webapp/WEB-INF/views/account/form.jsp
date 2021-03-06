<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8">
				<div class="card">
					<div class="header">
						<h3 class="title">사용 내역 입력</h3><br>
						<form action='add' method='post' enctype='multipart/form-data'>


							<input name='groupNo' type='hidden' value='1'> <input
								name='bankInfoId' type='hidden' value='1'>

							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>계정과목</label> <input name='accountTypeName' type='text'
											value='' class="form-control" placeholder='ex) 회의비'>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-2">
									<div class="form-group">
										<label>입금</label> <input name='deposit' type='text' value='0'
											class="form-control" placeholder='입금액'>
									</div>
								</div>

								<div class="col-md-2">
									<div class="form-group">
										<label>출금</label> <input name='withdraw' type='text' value='0'
											class="form-control" placeholder='출금액'>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>거래일</label> <input name='paymentDate' type='date'
											class="form-control">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>거래처</label> <input name='accountConnection' type='text'
											class="form-control" placeholder='거래처'>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>비고</label> <input name='remarks' type='text'
											class="form-control" placeholder='비고'>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>영수증사진</label> <input name='receiptPhotoFile'
											type='file' class="form-control">
									</div>
								</div>
							</div>
							<button type='submit' class="btn btn-info btn-fill">등록하기</button><br><br><br>
							<!-- 
<input type='submit' value='upload'/><br>
 -->
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 
<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8">
				<div class="card">
					<div class="header">
						<h4 class="title">사용 내역 입력</h4>
					</div>
					<div class="content">
						<form action='add' method='post' enctype='multipart/form-data'>
							<input name='groupNo' type='hidden' value='1'>
							<input name='bankInfoId' type='hidden' value='1'>
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>계정과목</label> <input name='accountTypeName' type='text'
											class="form-control" placeholder='ex) 회의비'>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2">
									<div class="form-group">
										<label>입금액</label> <input name='deposit' type='text'
											class="form-control">
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label>출금액</label> <input name='withdraw' type='text'
											class="form-control">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>거래일</label> <input name='paymentDate' type='date'
											class="form-control" placeholder='날짜'>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>거래처</label> <input name='accountConnection' type='text'
											class="form-control" placeholder='거래처'>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>비고</label> <input name='remarks' type='text'
											class="form-control" placeholder='비고'>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>영수증사진</label> <input name='receiptPhotoFile'
											type='file' class="form-control">
									</div>
									<br>
									<button type='submit' class="btn btn-info btn-fill">등록하기</button>
								<div class="clearfix"></div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
 -->