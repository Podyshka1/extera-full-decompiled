package org.mvel2.p026sh.command.file;

import java.io.File;
import org.mvel2.p026sh.Command;
import org.mvel2.p026sh.CommandException;
import org.mvel2.p026sh.ShellSession;

/* JADX INFO: loaded from: classes5.dex */
public class ChangeWorkingDir implements Command {
    @Override // org.mvel2.p026sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        File parentFile;
        File file = new File(shellSession.getEnv().get("$CWD"));
        if (strArr.length == 0 || ".".equals(strArr[0])) {
            return null;
        }
        if ("..".equals(strArr[0])) {
            if (file.getParentFile() != null) {
                parentFile = file.getParentFile();
            } else {
                throw new CommandException("already at top-level directory");
            }
        } else if (strArr[0].charAt(0) == '/') {
            File file2 = new File(strArr[0]);
            if (!file2.exists()) {
                throw new CommandException("no such directory: " + strArr[0]);
            }
            parentFile = file2;
        } else {
            File file3 = new File(file.getAbsolutePath() + "/" + strArr[0]);
            if (!file3.exists()) {
                throw new CommandException("no such directory: " + strArr[0]);
            }
            parentFile = file3;
        }
        shellSession.getEnv().put("$CWD", parentFile.getAbsolutePath());
        return null;
    }

    @Override // org.mvel2.p026sh.Command
    public String getDescription() {
        return "changes the working directory";
    }

    @Override // org.mvel2.p026sh.Command
    public String getHelp() {
        return "no help yet";
    }
}
