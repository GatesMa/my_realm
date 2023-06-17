



// 魔术函数 : __set __get __call __callStatic
// 构造函数 构造器 类每实例化一次 构造函数自动被调用

**自动调用**



类的自动加载器
spl_autoload_register
__autoload
composer 框架中的自动加载
https://learnku.com/articles/62233
https://juejin.cn/post/6844904180851671054
https://www.getyii.com/topic/697
https://www.daijulong.com/course/composer/autoload-classmap.html
https://chebincarl.github.io/2020/05/19/PHP-Composer%E8%87%AA%E5%8A%A8%E5%8A%A0%E8%BD%BD/




PHP namespace、require、use区别
https://www.jianshu.com/p/2f8a5e7d43cd

namespace 解决重名问题
use 仅用于简写类名
require 才能真正导入类


后期静态绑定 self static







- php重载 属性，  是指动态地创建类属性和方法。我们是通过魔术方法（magic methods）来实现的。 __get __set __callStatic __call
- 即时不实现 __set __get 方法，也可以成功设置和访问不存在的属性。但是不能设置和访问私有属性 private
- 访问不存在的属性或者私有属性的时候才会调用 __get __set。如果提前使用 $c->age = 20; 设置了一个属性，那么 echo $c->age; 不会走__get方法
- 方法拦截器 当访问当前类中不存在的方法时或者不可见的方法时 会调用魔术方法 __call   __callStatic

- 事件委托 请求委托  访问类中不存在的成远方法，会被魔术方法拦截，将请求重定向给或者委托给别的对象成员方法类处理。
- 委托是指一个对象转发或者委托一个请求给另一个对象，被委托的一方替原先对象处理请求。
- 委托比继承更加灵活  父类与子类的关系是固定的，只能单继承，但是请求可以委托给多个对象






从mvc谈到tp容器实现原理。门面模式、__get
https://spaphp.pages.woa.com/chapter1_container.html


