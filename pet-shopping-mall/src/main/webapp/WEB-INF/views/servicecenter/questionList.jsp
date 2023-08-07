<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
    <section class="common-section" id="#">
        <div class="common-title">
         	1:1 ���� ����
        </div>
        <div class="common-container">
            <div class="common-div">
            	<div class="service-search">
	            	<img src="${pageContext.request.contextPath}/resources/images/home/search.png"alt="">
	                <input type="text" name="service-search" id="service-search" value="" placeholder="����, ����" required>
	            </div>
	            <form action="${pageContext.request.contextPath}/servicecenter/questionCreate.do" class="form-inline">
					<button class="btn-add" >1:1���� ����</button>
				</form>
	        	<div class="service-util-div">
					<ul class="service-product-utility">
						<li class="qna-list-no"><a href="#">��ȣ</a></li>
						<li class="qna-list-status"><a href="#">����</a></li>
						<li class="qna-list-title"><a href="#">����</a></li>
						<li class="qna-list-date"><a href="#">�����</a></li>
					</ul>
				</div>
			<div class="accordion_wrap" id="accordion_wrap">
				<div class="que">
					<div class="qna-no">
						<ul>
							<li>1</li>
						</ul>
					</div>
					<div class="qna-state">
						<ul>
							<li class="qna-status">�亯�Ϸ�</li>
						</ul>
					</div>
					<div class="qna">
						<ul>
							<li class="qna-title">�쵿ģ�� �Ӿֿ�?</li>
						</ul>
					</div>
					<div class="qna-data-wrap">
						<ul>
							<li class="qna-date">23.08.06</li>
						</ul>
					</div>
				</div>
				<div class="anw">
					<div class="qna-desc"><span>Q</span> �쵿ģ�� �հ���</div>
					<div class="anw-desc"><span>A</span> �쵿ģ�� �츮������ģ���� ���Ӹ��Դϴ�~</div>
				</div>
            </div>
        </div>
    </div>
</section>
<script>
// ���� ������ ���ڵ�� ȿ��
const ques = document.querySelectorAll(".que");
const anws = document.querySelectorAll(".anw");

ques.forEach(que => {
  que.addEventListener("click", function() {
    const currentAnw = this.nextElementSibling;
    
    // �ٸ� �����鿡 �ִ� 'on' Ŭ���� ����
    ques.forEach(item => {
      if (item !== this) {
        item.classList.remove('on');
      }
    });
    
    // ���� ������ 'on' Ŭ���� ���
    this.classList.toggle('on');
    
    // ���� ������ �亯 ���
    currentAnw.style.display = currentAnw.style.display === 'block' ? 'none' : 'block';
    
    // �ٸ� �亯�� �ݱ�
    anws.forEach(anw => {
      if (anw !== currentAnw && anw.style.display === 'block') {
        anw.style.display = 'none';
      }
    });
  });
});

</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />