package usf.saav.cmd;
import java.util.*;

public class ResultList {

    List<Float> pValues;
    List<Float> vValues;
    List<Float> pRealValues;
    List<Float> vRealValues;

    public ResultList() {
        pValues = new ArrayList<>();
        vValues = new ArrayList<>();
        pRealValues = new ArrayList<>();
        vRealValues = new ArrayList<>();
    }

    public List<Float> getpValues() {
        return pValues;
    }

    public void setpValues(List<Float> pValues) {
        this.pValues = pValues;
    }

    public List<Float> getvValues() {
        return vValues;
    }

    public void setvValues(List<Float> vValues) {
        this.vValues = vValues;
    }

    public List<Float> getpRealValues() {
        return pRealValues;
    }

    public void setpRealValues(List<Float> pRealValues) {
        this.pRealValues = pRealValues;
    }

    public List<Float> getvRealValues() {
        return vRealValues;
    }

    public void setvRealValues(List<Float> vRealValues) {
        this.vRealValues = vRealValues;
    }
}
