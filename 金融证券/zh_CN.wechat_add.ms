+ __wechat_add
- {keep} {@__wechat_add_start} {@__is_chaogu}

+ __wechat_add_start
- 您好，我是北京xx证券的，我们证券公司开放了一个股票交流群，我想邀请您进群关注一下。
- 您好，我这边是xx证券的，咱们证券公司开放了免费的微信股票交流群，想邀请您进群关注一下。

+ __is_chaogu
- {keep} 请问您炒股吗？
- 您炒股吗？

+ (*) (不|没) (*) 
% {@__wechat_add_start} {@__is_chaogu}
- {keep} {@__not_chaogu}

+ (*) (好|有|对) (*)
% {@__not_chaogu}
- {keep} {@__wechat_is_phone} 

+ (*) (没|不) (*)
% {@__not_chaogu}
- {keep} {@__wechat_add_end_fail}

+ (*)  (炒|是|对) (*)
% {@__wechat_add_start} {@__is_chaogu}
-  {keep} {@__chaogu}

+ __not_chaogu
- {keep} 我们每天有直播课程教您炒股，您感兴趣么？
- 我们有免费的课程帮助您学习，您感兴趣么？ 

+ __chaogu
- {keep} {@__niu_gu}  {@__wechat_is_phone}

+ (*)(不|没)(*)
% {@__niu_gu}  {@__wechat_is_phone}
- {@__wechat_not_phone}

+ (*)(是|对|嗯|恩)(*)
% {@__niu_gu}  {@__wechat_is_phone}
- {@__wechat_add_end_succ}

+ (*)
% {@__wechat_not_phone}
- {@__wechat_add_later}

+ __wechat_is_phone
- 您的微信号是您手机号么？

+ __wechat_not_phone
- {keep} 好的，那您的微信号是什么？稍后我加一下您。

+ __wechat_add_end_succ
- {keep} 好的，那我加一下您，您稍后通过一下，然后我帮您拉群。
- 好的，稍后我加一下您。不打扰您了。

+ __niu_gu
- {keep} 我们有牛股交流群。

+ __wechat_add_later
- 收到，稍后我联系您。

+ __wechat_add_end_fail 
- {keep} 好的，不打扰您了。
- 好的，欢迎随时联系我们。
