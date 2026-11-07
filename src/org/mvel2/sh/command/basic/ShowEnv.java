package org.mvel2.sh.command.basic;

import java.util.Map;
import org.mvel2.sh.Command;
import org.mvel2.sh.ShellSession;

/* JADX INFO: loaded from: classes5.dex */
public class ShowEnv implements Command {
    @Override // org.mvel2.sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        Map<String, String> env = shellSession.getEnv();
        System.out.println("Printing Environment ...");
        for (String str : env.keySet()) {
            System.out.println(str + " => " + env.get(str));
        }
        System.out.println(" ** " + env.size() + " environment variables total.");
        return null;
    }

    @Override // org.mvel2.sh.Command
    public String getDescription() {
        return "shows current environment";
    }

    @Override // org.mvel2.sh.Command
    public String getHelp() {
        return "no help yet";
    }
}
