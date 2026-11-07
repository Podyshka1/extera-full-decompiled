package org.mvel2.sh.command.basic;

import org.mvel2.sh.Command;
import org.mvel2.sh.ShellSession;

/* JADX INFO: loaded from: classes5.dex */
public class PopContext implements Command {
    @Override // org.mvel2.sh.Command
    public String getHelp() {
        return null;
    }

    @Override // org.mvel2.sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        if (shellSession.popCtxObject()) {
            System.out.println("Popped context to " + shellSession.getCtxObject());
        }
        return shellSession.getCtxObject();
    }

    @Override // org.mvel2.sh.Command
    public String getDescription() {
        return "pops the previous context from the context queue";
    }
}
