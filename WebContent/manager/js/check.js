var profile_none = '请填写此项不能为空。'
var profile_seccode_invalid = '验证码输入错误，请重新填写。';
var profile_secanswer_invalid = '验证问答回答错误，请重新填写。';
var profile_username_toolong = '对不起，您的用户名超过 15 个字符，请输入一个较短的用户名。';
var profile_username_tooshort = '对不起，您输入的用户名小于3个字符, 请输入一个较长的用户名。';
var profile_username_illegal = '用户名包含敏感字符或被系统屏蔽，请重新填写。';
var profile_passwd_illegal = '密码空或包含非法字符，请重新填写。';
var profile_passwd_notmatch = '两次输入的密码不一致。';
var profile_email_illegal = 'Email 地址无效，请重新填写。';
var profile_email_invalid = '您只能使用以 结尾的信箱，请重新填写。';
var profile_email_censor = '请不要使用以 结尾的信箱，请重新填写。';
var profile_email_msn = '<a href="#" onclick="msnoperate(\'regliveid\')">把您的邮箱注册为MSN帐号</a>';
var doublee = parseInt('0');
var lastseccode = lastsecanswer = lastusername = lastpassword = lastemail = lastinvitecode = '';
var xml_http_building_link = '请等待，正在建立连接...';
var xml_http_sending = '请等待，正在发送数据...';
var xml_http_loading = '请等待，正在接受数据...';
var xml_http_load_failed = '通信失败，请刷新重新尝试！';
var xml_http_data_in_processed = '通信成功，数据正在处理中...';

//$('username').focus();

function checkseccode() {
	var seccodeverify = $('seccodeverify').value;
	if(seccodeverify == lastseccode) {
		return;
	} else {
		lastseccode = seccodeverify;
	}

	var cs = $('checkseccodeverify');
	if(!(/[0-9A-Za-z]{4}/.test(seccodeverify)) && seccodeverify.length != 2) {
		warning(cs, profile_seccode_invalid);
		return;
	}	
	ajaxresponse('checkseccodeverify', './ajax.php?script=member&action=checkseccode&seccodeverify='+ (browser == 'ie' && document.charset == 'utf-8' ? encodeURIComponent(seccodeverify) : seccodeverify));
}

function checksecanswer() {
	var secanswer = $('secanswer').value;
	if(secanswer == lastsecanswer) {
		return;
	} else {
		lastsecanswer = secanswer;
	}
	ajaxresponse('checksecanswer', 'action=checksecanswer&secanswer=' + (browser == 'ie' && document.charset == 'utf-8' ? encodeURIComponent(secanswer) : secanswer));
}

function checkusername() {
	var username = trim($('username').value);
	if(username == lastusername) {
		return;
	} else {
		lastusername = username;
	}

	var cu = $('checkusername');
	var unlen = 0;

	//if(document.charset == 'utf-8' || document.charset == 'gbk') {
	//	unlen = username.length;
	//} else {
		unlen = username.replace(/[^\x00-\xff]/g, "**").length;
	//}
	if(unlen < 3 || unlen > 15) {
		warning(cu, unlen < 3 ? profile_username_tooshort : profile_username_toolong);
		return;
	}
	ajaxresponse('checkusername', './ajax.php?script=member&action=checkusername&username=' + (browser == 'ie' && document.charset == 'utf-8' ? encodeURIComponent(username) : username));
}

function checkpassword(confirm) {
	var password = $('password').value;
	if(!confirm && password == lastpassword) {
		return;
	} else {
		lastpassword = password;
	}
	var cp = $('checkpassword');
	if(password == '' || /[\'\"\\]/.test(password)) {
		warning(cp, profile_passwd_illegal);
		return false;
	} else {
		cp.innerHTML = '<img src="'+ jsenv['THEME_PATH'] +'res/check_right.gif" width="13" height="13">';
		if(!confirm) {
			checkpassword2(true);
		}

		return true;
	}
}

function checkpassword2(confirm) {
	var password = $('password').value;
	var password2 = $('password2').value;
	var cp2 = $('checkpassword2');
	if(password2 != '') {
		checkpassword(true);
	}

	if(password == '' || (confirm && password2 == '')) {
		cp2.style.display = 'none';
		return;
	}

	if(password != password2) {
		warning(cp2, profile_passwd_notmatch);
	} else {
		cp2.innerHTML = '<img src="'+ jsenv['THEME_PATH'] +'res/check_right.gif" width="13" height="13">';
	}
}


function checkemail() {
	var email = trim($('email').value);
	if(email == lastemail) {
		return;
	} else {
		lastemail = email;
	}

	var ce = $('checkemail');
	var accessemail = '';
	var censoremail = '';
	var accessexp = accessemail != '' ? /()$/i : null;
	var censorexp = censoremail != '' ? /()$/i : null;

	illegalemail = !(/^[\-\.\w]+@[\.\-\w]+(\.\w+)+$/.test(email));
	invalidemail = accessemail != '' ? !accessexp.test(email) : censoremail != '' && censorexp.test(email);
	if(illegalemail || invalidemail) {
		warning(ce, illegalemail ? profile_email_illegal : (accessemail != '' ? profile_email_invalid : profile_email_censor));
		return;
	}

	if(!doublee) {
		ajaxresponse('checkemail', './ajax.php?script=member&action=checkemail&email=' + email);
	} else {
		ce.innerHTML = '<img src="'+ jsenv['THEME_PATH'] +'res/check_right.gif" width="13" height="13">';
	}

}

function checkinvitecode() {
	var invitecode = trim($('invitecode').value);
	if(invitecode == lastinvitecode) {
		return;
	} else {
		lastinvitecode = invitecode;
	}
	ajaxresponse('checkinvitecode', './ajax.php?script=membeaction=checkinvitecode&invitecode=' + invitecode);
}

function trim(str) {
	return str.replace(/^\s*(.*?)[\s\n]*$/g, '$1');
}

function ajaxresponse(objname, url) {
	var x = new ajax_cls('XML', objname);
	x.get(url+'&inajax=1', function(s){
		var obj = $(objname);
		if(s == 'succeed') {
			obj.style.display = '';
			obj.innerHTML = '<img src="'+ jsenv['THEME_PATH'] +'res/check_right.gif" height="13" width="13">';
			obj.className = "warning";
		} else {
			warning(obj, s);
		}
	});
}

function warning(obj, msg) {
	if((ton = obj.id.substr(5, obj.id.length)) != 'password2') {
		$(ton).select();
	}
	obj.style.display = '';
	obj.innerHTML = '<img src="'+ jsenv['THEME_PATH'] +'res/check_error.gif" width="13" height="13"> &nbsp; ' + msg;
	obj.className = "warning";
}
