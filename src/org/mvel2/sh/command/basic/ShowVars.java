package org.mvel2.sh.command.basic;

import java.util.Iterator;
import java.util.Map;
import org.mvel2.sh.Command;
import org.mvel2.sh.CommandException;
import org.mvel2.sh.ShellSession;

/* JADX INFO: loaded from: classes5.dex */
public class ShowVars implements Command {
    @Override // org.mvel2.sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        Map<String, Object> variables = shellSession.getVariables();
        int i = 0;
        boolean z = false;
        while (i < strArr.length) {
            if (!"-values".equals(strArr[i])) {
                throw new CommandException("unknown argument: " + strArr[i]);
            }
            i++;
            z = true;
        }
        System.out.println("Printing Variables ...");
        if (z) {
            for (String str : variables.keySet()) {
                System.out.println(str + " => " + String.valueOf(variables.get(str)));
            }
        } else {
            Iterator<String> it = variables.keySet().iterator();
            while (it.hasNext()) {
                System.out.println(it.next());
            }
        }
        System.out.println(" ** " + variables.size() + " variables total.");
        return null;
    }

    @Override // org.mvel2.sh.Command
    public String getDescription() {
        return "shows current variables";
    }

    @Override // org.mvel2.sh.Command
    public String getHelp() {
        return "no help yet";
    }
}
