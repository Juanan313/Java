package NumRomanos;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexMatcher {
    private String regex="";
    private Pattern pattern;
    private Matcher matcher;

    public RegexMatcher() {}
    
    public RegexMatcher(String regex) {
        this.regex = regex;
        pattern = Pattern.compile(regex);
    }

    public Matcher getMatcher(String aEvaluar) {
        return pattern.matcher(aEvaluar);
    }

    public String getregex() {
        return this.regex;
    }


}