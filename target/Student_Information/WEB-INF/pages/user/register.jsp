<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/include/common.jsp"%>

<!DOCTYPE html>
<html>
	<head>
	  	<!--title-->
       	<%@ include file="/WEB-INF/pages/include/title.jsp" %>
       	
       	<link rel="stylesheet" href="<%=path%>/res/webuploader/webuploader.css">
       	<script src="<%=path%>/res/webuploader/webuploader.min.js"></script>	 
       	
		<link rel="stylesheet" href="<%=path%>/res/plugins/validator/bootstrapValidator.min.css">
		<script src="<%=path%>/res/plugins/validator/bootstrapValidator.min.js"></script>	 
		<script src="<%=path%>/res/plugins/validator/language/zh_CN.js"></script> 	
		<style type="text/css">
			.file {
			    position: relative;
			    display: inline-block;
			    background: #D0EEFF;
			    border: 1px solid #99D3F5;
			    border-radius: 4px;
			    padding: 4px 12px;
			    overflow: hidden;
			    color: #1E88C7;
			    text-decoration: none;
			    text-indent: 0;
			    line-height: 20px;
			}
			.file input {
			    position: absolute;
			    font-size: 100px;
			    right: 0;
			    top: 0;
			    opacity: 0;
			}
			.file:hover {
			    background: #AADFFD;
			    border-color: #78C3F3;
			    color: #004974;
			    text-decoration: none;
			}
		</style>
		<script>
		  	$(function () {
		  		var result = "${result}";
		  		var msg= "${msg}";
		  		if(result == 1){
		  			$("#msgModelContent").html(msg);
		  			$("#msgModal").modal("show");
		  		}else{
		  			//$("#regModelContent").html("用户注册失败...");
		  		}
		  		
		  		//加载所在国家列表
			    $.getJSON("<%=path%>/area/listAll",function(result){
			        $.each(result, function(i, item){
			        	$("#area").append("<option value="+item.areaId+">"+item.areaNameCn+"("+item.areaNameEn+")</option>");
			        });
				});
		  	});
		</script>
		
	</head>
	<body class="hold-transition register-page">
		<!-- regModal -->
		<div class="modal fade bs-example-modal-sm" id="msgModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only"><sp:message code="sys.close" /></span>
						</button>
						<h5 class="modal-title" id="myModalLabel"><sp:message code="sys.msg.tips" /></h5>
					</div>
					<div class="modal-body" id=msgModelContent></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">
							<sp:message code="sys.close" />
						</button>
						<a href="<%=path%>/" class="btn btn-primary"><sp:message code="sys.sign" /></a>
					</div>
				</div>
			</div>
		</div>
		
		<div class="register-box" style="width: 800px;margin-top:0;margin-bottom:0;">
			<div class="register-logo">
				<a href="/"><b style="color: white;"><sp:message code="sys.name"/></b></a>
			</div>
	
			<div class="register-box-body" >
				<!-- <p class="login-box-msg">企业注册</p>  -->
				<h2 class="page-header" style="text-align: center;"><sp:message code="com.reg"/></h2>
				<div class="row">
					<div class="col-md-12">
						<!-- 用户注册 -->
						<div class="tab-pane active" id="tab_1">
							<form class="form-horizontal"  id="jksFrom" action="<%=path%>/com/add" method="post">
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">*<sp:message code="user.username"/></label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="username" placeholder="<sp:message code="user.reg.bt"/>">
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">*<sp:message code="user.password"/></label>
									<div class="col-sm-9">
										<input type="password" class="form-control" name="password" placeholder="<sp:message code="user.reg.bt"/>">
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">*<sp:message code="com.type"/></label>
									<div class="col-sm-9">
										<input type="radio" class="form-control" name="companyType" checked="checked" value="4"><sp:message code="com.jks"/>
										<input type="radio" class="form-control" name="companyType" value="5"><sp:message code="com.dls"/>
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">*<sp:message code="com.name"/></label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="companyName" placeholder="<sp:message code="user.reg.bt"/>">
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">*<sp:message code="com.con.name"/></label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="companyContactsName" placeholder="<sp:message code="user.reg.bt"/>">
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label"><sp:message code="com.con.tel"/></label>
									<div class="col-sm-9">
										<input type="tel" class="form-control" name="companyContactsTel" placeholder="<sp:message code="user.reg.kx"/>">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-3 control-label">*<sp:message code="com.con.email"/></label>
									<div class="col-sm-9">
										<input type="email" class="form-control" name="companyContactsEmail" placeholder="<sp:message code="user.reg.bt"/>">
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">*<sp:message code="com.con.mob"/></label>

									<div class="col-sm-9">
										<input type="tel" class="form-control" name="companyContactsMobile" placeholder="<sp:message code="user.reg.bt"/>">
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">*<sp:message code="com.reg.address"/></label>

									<div class="col-sm-9">
										<input type="text" class="form-control" name="companyRegisterAddress" placeholder="<sp:message code="user.reg.bt"/>">
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">*<sp:message code="com.work.address"/></label>

									<div class="col-sm-9">
										<input type="text" class="form-control" name="companyWorkAddress" placeholder="<sp:message code="user.reg.bt"/>">
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">*<sp:message code="com.legal"/></label>

									<div class="col-sm-9">
										<input type="text" class="form-control" name="companyLegal" placeholder="<sp:message code="user.reg.bt"/>">
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label">*<sp:message code="com.legal.mob"/></label>

									<div class="col-sm-9">
										<input type="tel" class="form-control" name="companyLegalTel" placeholder="<sp:message code="user.reg.bt"/>">
									</div>
								</div>
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label"><sp:message code="com.license"/></label>
					                <!-- <label>选择营业执照照片</label> -->
					                <div class="col-sm-9">
					                	<img id="licenseImg" src=""/>
					                	<input type="hidden" id="progressView" class="btn btn-success" value="" />
					                    <input type="file" id="uploadFile">
					                    <input type="hidden" class="form-control" id="companyLicenseImg" name="companyLicenseImg" placeholder="<sp:message code="com.license"/>">
				                    </div>
								</div>
								<!--  
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label"></label>
									<div class="col-sm-9">
										<label> <input type="checkbox"> 我同意并遵守<a href="#"> 协议</a> </label>
									</div>
								</div>
								-->
								<div class="form-group">
									<label for="inputName" class="col-sm-3 control-label"></label>
									<div class="col-sm-9">
										<button type="submit" class="btn btn-primary"><sp:message code="sys.reg"/></button>&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="<%=path%>/" class="btn btn-default"><sp:message code="sys.sign"/></a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- /.form-box -->
		</div>
		<!-- /.register-box -->
		
		<script src="<%=path%>/res/plugins/iCheck/icheck.min.js"></script>
		
		<!-- checkBox 美化 -->
		<script>
		  	$(function () {
			    $('input').iCheck({
			      	checkboxClass: 'icheckbox_square-blue',
			      	radioClass: 'iradio_square-blue',
			      	increaseArea: '20%' // optional
			    });
			    
			    // 文件修改时
			    $("#uploadFile").change(function() {
			    	$("#progressView").attr("type","botton")
			        $("#progressView").val("<sp:message code="sys.upload"/>");
			        var file = $(this).prop("files");
			        if (file.length != 0) {
			        	uploadFunction();
			        }
			    });
			    
			    //文件上传
			    function uploadFunction() {
			        var uploadFile = $("#uploadFile").get(0).files[0]; //获取文件对象
			        
			     	// FormData 对象
			        var form = new FormData();
			        form.append("file", uploadFile); // 文件对象
			        form.append("type", 1); // 文件类型
			        var uploadUrl = "<%=path%>/file/upload";//异步上传地址
			        $.ajax({
		                cache: false,
		                type: "POST",
		                url: uploadUrl,
		                contentType: false, 
		                processData: false, 
		                data: form,
		                xhr: function(){ //获取ajaxSettings中的xhr对象，为它的upload属性绑定progress事件的处理函数
		                	myXhr = $.ajaxSettings.xhr();
		                	if(progressFunction && myXhr.upload) { //检查进度函数和upload属性是否存在
		                		//绑定progress事件的回调函数
		                        myXhr.upload.addEventListener("progress",progressFunction, false);
		                    }
		                	return myXhr; //xhr对象返回给jQuery使用
	                	},
		                error: function(request) {
		                    alert("Connection error");
		                },
		                success: function(data) {
		                	$("#uploadFile").val("");
		                	$("#licenseImg").attr("src","<%=path%>"+data); //将后台返回图片路径设置给IMG，显示图片
				            $("#licenseImg").attr("width","100"); 
				            $("#progressView").attr("type","hidden");
				            $("#companyLicenseImg").val(data);
		                }
		            });
			    }
			    
			  	//进度条控制
				function progressFunction(evt) {
			        if (evt.lengthComputable) {
			            var completePercent = Math.round(evt.loaded / evt.total * 100)+ "%";
			            $("#progressView").val("<sp:message code="sys.run.upload"/>" + completePercent);
			        }
			    }
			});
			
		</script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#jksFrom').bootstrapValidator({
			        message: 'This value is not valid',
			        feedbackIcons: {
			            valid: 'glyphicon glyphicon-ok',
			            invalid: 'glyphicon glyphicon-remove',
			            validating: 'glyphicon glyphicon-refresh'
			        },
			        fields: {
			            username: {
			                validators: {
			                    notEmpty: {message: '<sp:message code="vali.bt"/>'},
			                    stringLength: {/*长度提示*/
		                            min: 6,
		                            max: 20,
		                            message: '<sp:message code="vali.username.len"/>'
		                        },
			                    threshold: 6, //有6字符以上才发送ajax请求，（input中输入一个字符，插件会向服务器发送一次，设置限制，6字符以上才开始）
			                    remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
			                         url: '<%=path%>/account/reusername',
			                         message: '<sp:message code="vali.username.cz"/>',//提示消息
			                         delay :  2000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
			                         type: 'POST'//请求方式
			                         /**自定义提交数据，默认值提交当前input value
			                          *  data: function(validator) {
			                               return {
			                                   password: $('[name="passwordNameAttributeInYourForm"]').val(),
			                                   whatever: $('[name="whateverNameAttributeInYourForm"]').val()
			                               };
			                            }
			                          */
			                    }
			                }
			            },
			            password: {
			                validators: {
			                	notEmpty: {message: '<sp:message code="vali.bt"/>'}
			                }
			            },
			            companyName: {
			                validators: {
			                	notEmpty: {message: '<sp:message code="vali.bt"/>'}
			                }
			            },
			            companyContactsName: {
			                validators: {
			                	notEmpty: {message: '<sp:message code="vali.bt"/>'}
			                }
			            },
			            companyContactsTel: {
			                validators: {
			                	regexp: {
			                		regexp: /^((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)$/,
			                		message:'<sp:message code="vali.tel"/>'
			                	}
			                }
			            },
			            companyContactsEmail: {
			                validators: {
			                	notEmpty: {message: '<sp:message code="vali.bt"/>'}
			                }
			            },
			            companyContactsMobile: {
			                validators: {
			                	notEmpty: {message: '<sp:message code="vali.bt"/>'},
			                	regexp: {
			                        regexp: /^1[3|5|8]{1}[0-9]{9}$/,
			                        message: '<sp:message code="vali.mob"/>'
			                    }
			                }
			            },
			            companyRegisterAddress: {
			                validators: {
			                	notEmpty: {message: '<sp:message code="vali.bt"/>'}
			                }
			            },
			            companyWorkAddress: {
			                validators: {
			                	notEmpty: {message: '<sp:message code="vali.bt"/>'}
			                }
			            },
			            companyLegal: {
			                validators: {
			                	notEmpty: {message: '<sp:message code="vali.bt"/>'}
			                }
			            },
			            companyLegalTel: {
			                validators: {
			                	regexp: {
			                        regexp: /^1[3|5|8]{1}[0-9]{9}$/,
			                        message: '<sp:message code="vali.mob"/>'
			                    }
			                }
			            }
			        }
			    });
			});
		</script>
	</body>
</html>