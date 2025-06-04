package com.example.mvcproject.comfile;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/**
 * 순수 Spring(Web MVC) 환경에서 톰캣이 기동될 때 SCSS 워처를 시작하고,
 * 톰캣이 종료되면 해당 워처를 중단시키는 Listener 클래스
 */
@WebListener
public class ScssWatcherListener implements ServletContextListener {

    // sass 워처 프로세스 핸들
    private Process sassProcess;

    /**
     * 톰캣(Tomcat) 혹은 기타 서블릿 컨테이너가 Context를 초기화할 때 호출
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext ctx = sce.getServletContext();

        // 1) SCSS 원본(.scss)이 위치한 파일 시스템 경로
        //    보통 순수 Spring MVC 프로젝트에서는
        //    src/main/webapp/resources/scss (또는 /static/scss 등) 형태로 둡니다.
        //    여기서는 /resources/scss 로 가정
        String scssDir = ctx.getRealPath("/resource/static/scss/style.css");

        // 2) 컴파일된 CSS를 출력할 폴더 경로 (예: /resources/css)
        String cssDir  = ctx.getRealPath("/resource/static/css/style.css");

        // sass 실행 명령어 (시스템에 sass가 설치되어 있어야 합니다)
        // 만약 Windows라면 "sass.bat" 등으로 바꾸고, 경로도 이스케이프 처리 필요
        ProcessBuilder pb = new ProcessBuilder(
                "sass",
                "--watch",
                scssDir + ":" + cssDir ,
                "--style=compressed"
        );
        // 콘솔에서 sass 워처 로그를 바로 볼 수 있게 설정
        pb.inheritIO();

        try {
            sassProcess = pb.start();
            System.out.println("[ScssWatcher] SCSS watcher 프로세스를 시작했습니다.");
            System.out.println("    - 원본 경로: " + scssDir);
            System.out.println("    - 출력 경로: " + cssDir);
        } catch (IOException e) {
            System.err.println("[ScssWatcher] SCSS watcher 실행 실패:");
            e.printStackTrace();
        }
    }

    /**
     * 톰캣(Tomcat) 혹은 기타 서블릿 컨테이너가 Context를 종료할 때 호출
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        if (sassProcess != null && sassProcess.isAlive()) {
            System.out.println("[ScssWatcher] SCSS watcher 프로세스를 중단합니다...");
            sassProcess.destroy();  // 우선 정상 종료 시도
            try {
                // 최대 5초 정도 기다려 보고, 여전히 살아있으면 강제 종료
                boolean exited = sassProcess.waitFor(5, TimeUnit.SECONDS);
                if (!exited) {
                    System.out.println("[ScssWatcher] SCSS watcher 강제 종료합니다.");
                    sassProcess.destroyForcibly();
                }
            } catch (InterruptedException ie) {
                System.out.println("[ScssWatcher] 종료 대기 중 인터럽트 발생. 강제 종료합니다.");
                sassProcess.destroyForcibly();
                Thread.currentThread().interrupt();
            }
        }
    }
}
