(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/huimian/detail"],{"1a08":function(t,n,e){"use strict";(function(t){e("1c18");a(e("66fd"));var n=a(e("adbb"));function a(t){return t&&t.__esModule?t:{default:t}}t(n.default)}).call(this,e("543d")["createPage"])},"39e4":function(t,n,e){"use strict";e.d(n,"b",(function(){return r})),e.d(n,"c",(function(){return s})),e.d(n,"a",(function(){return a}));var a={mescrollUni:function(){return Promise.all([e.e("common/vendor"),e.e("components/mescroll-uni/mescroll-uni")]).then(e.bind(null,"9ac3"))},uniPopup:function(){return e.e("components/uni-popup/uni-popup").then(e.bind(null,"cb97"))}},r=function(){var t=this,n=t.$createElement;t._self._c},s=[]},"9c6b":function(t,n,e){"use strict";(function(t){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var a=r(e("a34a"));function r(t){return t&&t.__esModule?t:{default:t}}function s(t,n,e,a,r,s,i){try{var u=t[s](i),o=u.value}catch(c){return void e(c)}u.done?n(o):Promise.resolve(o).then(a,r)}function i(t){return function(){var n=this,e=arguments;return new Promise((function(a,r){var i=t.apply(n,e);function u(t){s(i,a,r,u,o,"next",t)}function o(t){s(i,a,r,u,o,"throw",t)}u(void 0)}))}}var u={data:function(){return{autoplaySwiper:!0,intervalSwiper:3e3,btnColor:["#409eff","#67c23a","#909399","#e6a23c","#f56c6c","#356c6c","#351c6c","#f093a9","#a7c23a","#104eff","#10441f","#a21233","#503319"],id:"",detail:{},swiperList:[],commentList:[],mescroll:null,downOption:{auto:!1},upOption:{noMoreSize:3,textNoMore:"~ 没有更多了 ~"},hasNext:!0,user:{},sfshIndex:-1,sfshOptions:["通过","不通过"],count:0}},computed:{SecondToDate:function(){var t=this.count;return null!=t&&""!=t&&(t=t>60&&t<3600?parseInt(t/60)+"分钟"+parseInt(60*(parseFloat(t/60)-parseInt(t/60)))+"秒":t>=3600&&t<86400?parseInt(t/3600)+"小时"+parseInt(60*(parseFloat(t/3600)-parseInt(t/3600)))+"分钟"+parseInt(60*(parseFloat(60*(parseFloat(t/3600)-parseInt(t/3600)))-parseInt(60*(parseFloat(t/3600)-parseInt(t/3600)))))+"秒":t>=86400?parseInt(t/3600/24)+"天"+parseInt(24*(parseFloat(t/3600/24)-parseInt(t/3600/24)))+"小时"+parseInt(60*(parseFloat(t/3600)-parseInt(t/3600)))+"分钟"+parseInt(60*(parseFloat(60*(parseFloat(t/3600)-parseInt(t/3600)))-parseInt(60*(parseFloat(t/3600)-parseInt(t/3600)))))+"秒":parseInt(t)+"秒"),t}},onLoad:function(t){var n=this;return i(a.default.mark((function e(){return a.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:n.id=t.id;case 1:case"end":return e.stop()}}),e)})))()},onShow:function(n){var e=this;return i(a.default.mark((function n(){var r,s;return a.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return e.init(),r=t.getStorageSync("nowTable"),n.next=4,e.$api.session(r);case 4:s=n.sent,e.user=s.data,e.btnColor=e.btnColor.sort((function(){return.5-Math.random()}));case 7:case"end":return n.stop()}}),n)})))()},destroyed:function(){},methods:{onPayTap:function(){t.setStorageSync("paytable","huimian"),t.setStorageSync("payObject",this.detail),this.$utils.jump("../pay-confirm/pay-confirm?type=1")},onAcrossTap:function(n){t.setStorageSync("crossTable","huimian"),t.setStorageSync("crossObj",this.detail),this.$utils.jump("../".concat(n,"/add-or-update?cross=true"))},init:function(){var t=this;return i(a.default.mark((function n(){var e;return a.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return n.next=2,t.$api.info("huimian",t.id);case 2:e=n.sent,t.detail=e.data,t.swiperList=t.detail.tupian?t.detail.tupian.split(","):[];case 5:case"end":return n.stop()}}),n)})))()},mescrollInit:function(t){this.mescroll=t},downCallback:function(t){this.hasNext=!0,t.resetUpScroll()},upCallback:function(t){var n=this;return i(a.default.mark((function e(){return a.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:t.endSuccess(t.size,n.hasNext);case 1:case"end":return e.stop()}}),e)})))()},onChatTap:function(){this.$utils.jump("../chat/chat")},download:function(n){var e=this;t.downloadFile({url:n,success:function(t){200===t.statusCode&&(e.$utils.msg("下载成功"),window.open(n))}})},onCartTabTap:function(){this.$utils.tab("../shop-cart/shop-cart")},onCommentTap:function(){this.$utils.jump("../discusshuimian/add-or-update?refid=".concat(this.id))},zan:function(){var n=this;return i(a.default.mark((function e(){var r;return a.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:r=n,t.showModal({title:"提示",content:"是否点赞",success:function(){var t=i(a.default.mark((function t(n){return a.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!n.confirm){t.next=5;break}return r.detail.thumbsupnum=parseInt(r.detail.thumbsupnum)+1,t.next=4,r.$api.update("huimian",r.detail);case 4:r.$utils.msg("点赞成功");case 5:case"end":return t.stop()}}),t)})));function n(n){return t.apply(this,arguments)}return n}()});case 2:case"end":return e.stop()}}),e)})))()},cai:function(){var n=this;return i(a.default.mark((function e(){var r;return a.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:r=n,t.showModal({title:"提示",content:"是否点踩",success:function(){var t=i(a.default.mark((function t(n){return a.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!n.confirm){t.next=5;break}return r.detail.crazilynum=parseInt(r.detail.crazilynum)+1,t.next=4,r.$api.update("huimian",r.detail);case 4:r.$utils.msg("点踩成功");case 5:case"end":return t.stop()}}),t)})));function n(n){return t.apply(this,arguments)}return n}()});case 2:case"end":return e.stop()}}),e)})))()},onSHTap:function(){this.$refs.popup.open()},onFinishTap:function(){var t=this;return i(a.default.mark((function n(){return a.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(t.detail.sfsh){n.next=3;break}return t.$utils.msg("请选择审核状态"),n.abrupt("return");case 3:if(t.detail.shhf){n.next=6;break}return t.$utils.msg("请填写审核回复"),n.abrupt("return");case 6:return"通过"==t.detail.sfsh&&(t.detail.sfsh="是"),"不通过"==t.detail.sfsh&&(t.detail.sfsh="否"),n.next=10,t.$api.update("huimian",t.detail);case 10:t.$utils.msg("审核成功"),t.$refs.popup.close();case 12:case"end":return n.stop()}}),n)})))()},onCloseWinTap:function(){this.$refs.popup.close()},sfshChange:function(t){console.log(this.detail),this.sfshIndex=t.target.value,this.detail.sfsh=this.sfshOptions[this.sfshIndex]}}};n.default=u}).call(this,e("543d")["default"])},adbb:function(t,n,e){"use strict";e.r(n);var a=e("39e4"),r=e("e7a0");for(var s in r)"default"!==s&&function(t){e.d(n,t,(function(){return r[t]}))}(s);e("c457");var i,u=e("f0c5"),o=Object(u["a"])(r["default"],a["b"],a["c"],!1,null,null,null,!1,a["a"],i);n["default"]=o.exports},c457:function(t,n,e){"use strict";var a=e("d3bc"),r=e.n(a);r.a},d3bc:function(t,n,e){},e7a0:function(t,n,e){"use strict";e.r(n);var a=e("9c6b"),r=e.n(a);for(var s in a)"default"!==s&&function(t){e.d(n,t,(function(){return a[t]}))}(s);n["default"]=r.a}},[["1a08","common/runtime","common/vendor"]]]);