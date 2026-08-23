package org.mvel2.sh.command.basic;

import org.mvel2.sh.Command;
import org.mvel2.sh.ShellSession;

/* JADX INFO: loaded from: classes5.dex */
public class Exit implements Command {
    @Override // org.mvel2.sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        System.exit(0);
        return null;
    }

    @Override // org.mvel2.sh.Command
    public String getDescription() {
        return "exits the command shell";
    }

    @Override // org.mvel2.sh.Command
    public String getHelp() {
        return "No help yet.";
    }
}
