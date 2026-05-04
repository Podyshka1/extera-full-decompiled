package org.mvel2.p026sh.command.basic;

import java.util.Map;
import org.mvel2.p026sh.Command;
import org.mvel2.p026sh.CommandException;
import org.mvel2.p026sh.ShellSession;
import org.mvel2.util.StringAppender;

/* JADX INFO: loaded from: classes5.dex */
public class Set implements Command {
    @Override // org.mvel2.p026sh.Command
    public String getHelp() {
        return null;
    }

    @Override // org.mvel2.p026sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        Map<String, String> env = shellSession.getEnv();
        if (strArr.length == 0) {
            for (String str : env.keySet()) {
                System.out.println(str + " = " + env.get(str));
            }
            return null;
        }
        if (strArr.length == 1) {
            throw new CommandException("incorrect number of parameters");
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

    @Override // org.mvel2.p026sh.Command
    public String getDescription() {
        return "sets an environment variable";
    }
}
