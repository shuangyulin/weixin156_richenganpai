(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/yongcan/add-or-update"],{"5bb8":function(n,e,a){"use strict";(function(n){a("1c18");t(a("66fd"));var e=t(a("e7d8"));function t(n){return n&&n.__esModule?n:{default:n}}n(e.default)}).call(this,a("543d")["createPage"])},"75d7":function(n,e,a){"use strict";a.r(e);var t=a("9c7a"),r=a.n(t);for(var o in t)"default"!==o&&function(n){a.d(e,n,(function(){return t[n]}))}(o);e["default"]=r.a},"7c8a":function(n,e,a){},"7d87":function(n,e,a){"use strict";var t;a.d(e,"b",(function(){return r})),a.d(e,"c",(function(){return o})),a.d(e,"a",(function(){return t}));var r=function(){var n=this,e=n.$createElement;n._self._c},o=[]},"9c7a":function(n,e,a){"use strict";(function(n){Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var t=r(a("a34a"));function r(n){return n&&n.__esModule?n:{default:n}}function o(n,e,a,t,r,o,i){try{var u=n[o](i),c=u.value}catch(g){return void a(g)}u.done?e(c):Promise.resolve(c).then(t,r)}function i(n){return function(){var e=this,a=arguments;return new Promise((function(t,r){var i=n.apply(e,a);function u(n){o(i,t,r,u,c,"next",n)}function c(n){o(i,t,r,u,c,"throw",n)}u(void 0)}))}}var u=function(){Promise.all([a.e("common/vendor"),a.e("components/w-picker/w-picker")]).then(function(){return resolve(a("35a9"))}.bind(null,a)).catch(a.oe)},c={data:function(){return{ruleForm:{yongcanbianhao:this.getUUID(),gongzuomingcheng:"",gongzuoneirong:"",gongzuodidian:"",gongzuoshijian:"",yongcanshijian:"",yongcandidian:"",tupian:"",zhanghao:"",xingming:""},user:{},ro:{yongcanbianhao:!1,gongzuomingcheng:!1,gongzuoneirong:!1,gongzuodidian:!1,gongzuoshijian:!1,yongcanshijian:!1,yongcandidian:!1,tupian:!1,zhanghao:!1,xingming:!1}}},components:{wPicker:u},computed:{},onLoad:function(e){var a=this;return i(t.default.mark((function r(){var o,i,u,c;return t.default.wrap((function(r){while(1)switch(r.prev=r.next){case 0:return o=n.getStorageSync("nowTable"),r.next=3,a.$api.session(o);case 3:if(i=r.sent,a.user=i.data,a.ruleForm.zhanghao=a.user.zhanghao,a.ruleForm.xingming=a.user.xingming,a.ruleForm.userid=n.getStorageSync("userid"),e.refid&&(a.ruleForm.refid=e.refid,a.ruleForm.nickname=n.getStorageSync("nickname")),!e.id){r.next=15;break}return a.ruleForm.id=e.id,r.next=13,a.$api.info("yongcan",a.ruleForm.id);case 13:i=r.sent,a.ruleForm=i.data;case 15:if(!e.cross){r.next=62;break}u=n.getStorageSync("crossObj"),r.t0=t.default.keys(u);case 18:if((r.t1=r.t0()).done){r.next=62;break}if(c=r.t1.value,"yongcanbianhao"!=c){r.next=24;break}return a.ruleForm.yongcanbianhao=u[c],a.ro.yongcanbianhao=!0,r.abrupt("continue",18);case 24:if("gongzuomingcheng"!=c){r.next=28;break}return a.ruleForm.gongzuomingcheng=u[c],a.ro.gongzuomingcheng=!0,r.abrupt("continue",18);case 28:if("gongzuoneirong"!=c){r.next=32;break}return a.ruleForm.gongzuoneirong=u[c],a.ro.gongzuoneirong=!0,r.abrupt("continue",18);case 32:if("gongzuodidian"!=c){r.next=36;break}return a.ruleForm.gongzuodidian=u[c],a.ro.gongzuodidian=!0,r.abrupt("continue",18);case 36:if("gongzuoshijian"!=c){r.next=40;break}return a.ruleForm.gongzuoshijian=u[c],a.ro.gongzuoshijian=!0,r.abrupt("continue",18);case 40:if("yongcanshijian"!=c){r.next=44;break}return a.ruleForm.yongcanshijian=u[c],a.ro.yongcanshijian=!0,r.abrupt("continue",18);case 44:if("yongcandidian"!=c){r.next=48;break}return a.ruleForm.yongcandidian=u[c],a.ro.yongcandidian=!0,r.abrupt("continue",18);case 48:if("tupian"!=c){r.next=52;break}return a.ruleForm.tupian=u[c],a.ro.tupian=!0,r.abrupt("continue",18);case 52:if("zhanghao"!=c){r.next=56;break}return a.ruleForm.zhanghao=u[c],a.ro.zhanghao=!0,r.abrupt("continue",18);case 56:if("xingming"!=c){r.next=60;break}return a.ruleForm.xingming=u[c],a.ro.xingming=!0,r.abrupt("continue",18);case 60:r.next=18;break;case 62:a.styleChange();case 63:case"end":return r.stop()}}),r)})))()},methods:{styleChange:function(){this.$nextTick((function(){}))},gongzuoshijianChange:function(n){this.ruleForm.gongzuoshijian=n.target.value,this.$forceUpdate()},yongcanshijianChange:function(n){this.ruleForm.yongcanshijian=n.target.value,this.$forceUpdate()},tupianTap:function(){var n=this;this.$api.upload((function(e){n.ruleForm.tupian=n.$base.url+"upload/"+e.file,n.$forceUpdate(),n.$nextTick((function(){n.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var n=this;return i(t.default.mark((function e(){return t.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!n.ruleForm.id){e.next=5;break}return e.next=3,n.$api.update("yongcan",n.ruleForm);case 3:e.next=7;break;case 5:return e.next=7,n.$api.add("yongcan",n.ruleForm);case 7:n.$utils.msgBack("提交成功");case 8:case"end":return e.stop()}}),e)})))()},optionsChange:function(n){this.index=n.target.value},bindDateChange:function(n){this.date=n.target.value},getDate:function(n){var e=new Date,a=e.getFullYear(),t=e.getMonth()+1,r=e.getDate();return"start"===n?a-=60:"end"===n&&(a+=2),t=t>9?t:"0"+t,r=r>9?r:"0"+r,"".concat(a,"-").concat(t,"-").concat(r)},toggleTab:function(n){this.$refs[n].show()}}};e.default=c}).call(this,a("543d")["default"])},e7d8:function(n,e,a){"use strict";a.r(e);var t=a("7d87"),r=a("75d7");for(var o in r)"default"!==o&&function(n){a.d(e,n,(function(){return r[n]}))}(o);a("ec14");var i,u=a("f0c5"),c=Object(u["a"])(r["default"],t["b"],t["c"],!1,null,"6a119141",null,!1,t["a"],i);e["default"]=c.exports},ec14:function(n,e,a){"use strict";var t=a("7c8a"),r=a.n(t);r.a}},[["5bb8","common/runtime","common/vendor"]]]);