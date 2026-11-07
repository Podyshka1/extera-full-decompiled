package org.mvel2.sh.command.basic;

import java.util.Map;
import org.mvel2.sh.Command;
import org.mvel2.sh.ShellSession;
import org.mvel2.util.StringAppender;

/* JADX INFO: loaded from: classes5.dex */
public class Set implements Command {
    @Override // org.mvel2.sh.Command
    public String getHelp() {
        return null;
    }

    @Override // org.mvel2.sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        Map<String, String> env = shellSession.getEnv();
        int length = strArr.length;
        if (length == 0) {
            for (String str : env.keySet()) {
                System.out.println(str + " = " + env.get(str));
            }
            return null;
        }
        if (length == 1) {
            String strRemove = env.remove(strArr[0]);
            if (strRemove == null) {
                return null;
            }
            System.out.println("Removed " + strArr[0] + " = " + strRemove);
            return null;
        }
        StringAppender stringAppender = new StringAppender();
        for (int i = 1; i < strArr.length; i++) {
            stringAppender.append(strArr[i]);
            if (i < strArr.length) {
                stringAppender.append(" ");
            }
        }
        env.put(strArr[0], stringAppender.toString().trim());
        return null;
    }

    @Override // org.mvel2.sh.Command
    public String getDescription() {
        return "sets an environment variable";
    }
}
