#!/bin/bash
# reset
trap 'rm example.log' EXIT
#given
echo '2023-05-14 11:21:54.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:20:54.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:13:54.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:13:54.189  INFO 4828 --- [           main] com.concretepage.MyApplication           : No active profile set, falling back to default profiles: default
2023-05-14 11:13:58.846  INFO 4828 --- [           main] com.concretepage.MyApplication           : Started MyApplication in 5.209 seconds (JVM running for 5.66)
2023-05-14 11:13:58.844 DEBUG 4828 --- [           main] com.concretepage.MyApplication
2023-05-14 11:09:55.189 DEBUG 4828 --- [           main] com.concretepage.MyApplication           : Running with Spring Boot v1.5.2.RELEASE, Spring v4.3.7.RELEASE
2023-05-14 11:08:58.844 ERROR org.apache.juli.logging.DirectJDKLog:182 - Servlet.service() for servlet [dispatcherServlet] in context with path [] threw exception [Request processing failed; nested exception is java.lang.NullPointerException] with root cause
java.lang.NullPointerException: null
at java.net.URLEncoder.encode(URLEncoder.java:204)
at com.pingan.property.icore.pap.access.interceptor.PAPBasicErrorController.setExceptionResponse(PAPBasicErrorController.java:82)
at com.pingan.property.icore.pap.access.interceptor.PAPBasicErrorController.error(PAPBasicErrorController.java:60)
at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
at java.lang.reflect.Method.invoke(Method.java:497)
at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)
at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:133)
at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:116)
at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:827)
at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:738)
at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)
at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:963)
at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:897)
at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)
at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:872)
at javax.servlet.http.HttpServlet.service(HttpServlet.java:648)
at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)
at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)
at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)
at org.springframework.boot.web.support.ErrorPageFilter.doFilter(ErrorPageFilter.java:108)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:720)
at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:466)
at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:391)
at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:318)
at org.springframework.boot.web.support.ErrorPageFilter.forwardToErrorPage(ErrorPageFilter.java:183)
at org.springframework.boot.web.support.ErrorPageFilter.handleException(ErrorPageFilter.java:166)
at org.springframework.boot.web.support.ErrorPageFilter.doFilter(ErrorPageFilter.java:130)
at org.springframework.boot.web.support.ErrorPageFilter.access$000(ErrorPageFilter.java:59)
at org.springframework.boot.web.support.ErrorPageFilter$1.doFilterInternal(ErrorPageFilter.java:90)
at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
at org.springframework.boot.web.support.ErrorPageFilter.doFilter(ErrorPageFilter.java:108)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)
at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)
at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)
at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)
at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)
at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)
at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)
at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:522)
at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1095)
at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:672)
at org.apache.tomcat.util.net.AprEndpoint$SocketWithOptionsProcessor.run(AprEndpoint.java:2437)
at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
at java.lang.Thread.run(Thread.java:745)
2023-05-14 11:08:54.189 DEBUG org.springframework.jdbc.datasource.DataSourceUtils:327 - Returning JDBC Connection to DataSource' > example.log
echo "The example.log detail:"
echo ""
cat example.log
echo ""

# 打印出错误日志包含堆栈信息: 
echo "打印出错误日志包含堆栈信息: "
echo "running..."
echo ""
# when todo

actual="TODO"

# then
echo "执行结果为："
result=$(diff -i <( echo '2023-05-14 11:08:58.844 ERROR org.apache.juli.logging.DirectJDKLog:182 - Servlet.service() for servlet [dispatcherServlet] in context with path [] threw exception [Request processing failed; nested exception is java.lang.NullPointerException] with root cause
java.lang.NullPointerException: null
at java.net.URLEncoder.encode(URLEncoder.java:204)
at com.pingan.property.icore.pap.access.interceptor.PAPBasicErrorController.setExceptionResponse(PAPBasicErrorController.java:82)
at com.pingan.property.icore.pap.access.interceptor.PAPBasicErrorController.error(PAPBasicErrorController.java:60)
at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
at java.lang.reflect.Method.invoke(Method.java:497)
at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)
at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:133)
at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:116)
at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:827)
at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:738)
at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)
at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:963)
at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:897)
at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)
at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:872)
at javax.servlet.http.HttpServlet.service(HttpServlet.java:648)
at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)
at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)
at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)
at org.springframework.boot.web.support.ErrorPageFilter.doFilter(ErrorPageFilter.java:108)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:720)
at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:466)
at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:391)
at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:318)
at org.springframework.boot.web.support.ErrorPageFilter.forwardToErrorPage(ErrorPageFilter.java:183)
at org.springframework.boot.web.support.ErrorPageFilter.handleException(ErrorPageFilter.java:166)
at org.springframework.boot.web.support.ErrorPageFilter.doFilter(ErrorPageFilter.java:130)
at org.springframework.boot.web.support.ErrorPageFilter.access$000(ErrorPageFilter.java:59)
at org.springframework.boot.web.support.ErrorPageFilter$1.doFilterInternal(ErrorPageFilter.java:90)
at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)
at org.springframework.boot.web.support.ErrorPageFilter.doFilter(ErrorPageFilter.java:108)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)
at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)
at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)
at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)
at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)
at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)
at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)
at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)
at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:522)
at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1095)
at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:672)
at org.apache.tomcat.util.net.AprEndpoint$SocketWithOptionsProcessor.run(AprEndpoint.java:2437)
at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
at java.lang.Thread.run(Thread.java:745)' ) <( echo "$actual" ))

if [ -n "$result" ]; then
    echo "$result"
else
    echo "Match Success! this result:"
    echo "$actual"
fi

