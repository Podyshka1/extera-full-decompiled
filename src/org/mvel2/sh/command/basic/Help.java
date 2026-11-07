package org.mvel2.sh.command.basic;

import org.mvel2.sh.Command;
import org.mvel2.sh.ShellSession;
import org.mvel2.sh.text.TextUtil;

/* JADX INFO: loaded from: classes5.dex */
public class Help implements Command {
    @Override // org.mvel2.sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        for (String str : shellSession.getCommands().keySet()) {
            System.out.println(str + TextUtil.pad(str.length(), 25) + "- " + shellSession.getCommands().get(str).getDescription());
        }
        return null;
    }

    @Override // org.mvel2.sh.Command
    public String getDescription() {
        return "displays help for available shell commands";
    }

    @Override // org.mvel2.sh.Command
    public String getHelp() {
        return "No help yet";
    }
}
