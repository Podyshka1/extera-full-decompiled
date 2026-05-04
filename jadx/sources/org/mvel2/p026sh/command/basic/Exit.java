package org.mvel2.p026sh.command.basic;

import org.mvel2.p026sh.Command;
import org.mvel2.p026sh.ShellSession;

/* JADX INFO: loaded from: classes5.dex */
public class Exit implements Command {
    @Override // org.mvel2.p026sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        System.exit(0);
        return null;
    }

    @Override // org.mvel2.p026sh.Command
    public String getDescription() {
        return "exits the command shell";
    }

    @Override // org.mvel2.p026sh.Command
    public String getHelp() {
        return "No help yet.";
    }
}
