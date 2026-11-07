package org.mvel2.sh.command.basic;

import com.exteragram.messenger.backup.InvisibleEncryptor$$ExternalSyntheticBackport0;
import org.mvel2.MVEL;
import org.mvel2.sh.Command;
import org.mvel2.sh.ShellSession;

/* JADX INFO: loaded from: classes5.dex */
public class PushContext implements Command {
    @Override // org.mvel2.sh.Command
    public String getHelp() {
        return null;
    }

    @Override // org.mvel2.sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        boolean zPushCtxObject;
        if (strArr.length == 0) {
            zPushCtxObject = shellSession.pushCtxObject(null);
        } else {
            zPushCtxObject = false;
            try {
                Object objEval = MVEL.eval(InvisibleEncryptor$$ExternalSyntheticBackport0.m245m(" ", strArr), shellSession.getCtxObject(), shellSession.getVariables());
                if (objEval != null) {
                    zPushCtxObject = shellSession.pushCtxObject(objEval);
                }
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        }
        Object ctxObject = shellSession.getCtxObject();
        if (zPushCtxObject) {
            System.out.println("Pushed context to " + ctxObject);
        }
        return ctxObject;
    }

    @Override // org.mvel2.sh.Command
    public String getDescription() {
        return "pushes the given variable to the current context";
    }
}
