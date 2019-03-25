package COM.StepDefinations;

import COM.CommonDriver;
import org.junit.Before;

public class hooks {

    CommonDriver CD = new CommonDriver();

    @Before

    public void open() {

        CD.OpenBrowser();
    }

    public void Close() {

        CD.CloseBrowser();
    }


}
