package edu.asu.functionaltests.apps.myasu;

import edu.asu.functionaltests.driver.WebDriverFactory;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class AppointmentAutomation {
    public static void main(String[] args) throws Exception {


        final String FILENAME = ".\\Writer.txt";
        File file = new File(FILENAME);
        if (!file.exists()) {
            file.createNewFile();
        }

        givenUsingTimer_whenSchedulingRepeatedTask_thenCorrect(file);

    }

    public static void automate (File file) throws Exception
    {
        String url = "https://webapp4.asu.edu/advsched/?acad_org=CENGLISH&confirmAnon=Y";
        WebDriver driver= WebDriverFactory.getConn(url);
        WebElement element,element1,elem;
        BufferedWriter bw = null;
        FileWriter fw = null;
        try {
            element = driver.findElement(By.xpath("//a[text()='You are a potential ASU student interested in English or Film and Media Studies as a major.']"));
            element.click();
            element1 = driver.findElement(By.xpath("//a[text()='Continue to scheduling system']"));
            element1.click();
            Thread.sleep(1000);
            elem = driver.findElement(By.xpath("//span[@id='Clientheader_subh_lblFirstName']"));

            fw = new FileWriter(file.getAbsoluteFile(), true);
            bw = new BufferedWriter(fw);
            if(elem.getText().equals("temporary"))
            {

                bw.write("Success\t"+ new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())+"\r\n");
            }
            else
            {
                bw.write("Failure\t" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())+"\r\n");
            }
        }
        catch (Exception e)
        {
            fw = new FileWriter(file.getAbsoluteFile(), true);
            bw = new BufferedWriter(fw);
            bw.write("Failure\t" +  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())+"\r\n");
            e.printStackTrace();
        }

        bw.close();
        fw.close();
        driver.close();
    }
    public static void givenUsingTimer_whenSchedulingRepeatedTask_thenCorrect(File file){
        TimerTask repeatedTask = new TimerTask() {
            public void run() {
                try {
                    automate(file);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        };
        Timer timer = new Timer("Timer");
        long delay  = 1000L;
        long period = 1000L;
        //300000L
        timer.scheduleAtFixedRate(repeatedTask, 0, 300000L);
    }
}
