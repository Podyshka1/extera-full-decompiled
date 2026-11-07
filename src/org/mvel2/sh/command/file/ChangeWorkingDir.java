package org.mvel2.sh.command.file;

import java.io.File;
import org.mvel2.sh.Command;
import org.mvel2.sh.CommandException;
import org.mvel2.sh.ShellSession;

/* JADX INFO: loaded from: classes5.dex */
public class ChangeWorkingDir implements Command {
    @Override // org.mvel2.sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        File file;
        File file2 = new File(shellSession.getEnv().get("$CWD"));
        if (strArr.length == 0 || ".".equals(strArr[0])) {
            return null;
        }
        if ("..".equals(strArr[0])) {
            if (file2.getParentFile() != null) {
                file = file2.getParentFile();
            } else {
                throw new CommandException("already at top-level directory");
            }
        } else if (strArr[0].charAt(0) == '/') {
            file = new File(strArr[0]);
            if (!file.exists()) {
                throw new CommandException("no such directory: " + strArr[0]);
            }
        } else {
            File file3 = new File(file2.getAbsolutePath() + "/" + strArr[0]);
            if (!file3.exists()) {
                throw new CommandException("no such directory: " + strArr[0]);
            }
            file = file3;
        }
        shellSession.getEnv().put("$CWD", file.getAbsolutePath());
        return null;
    }

    @Override // org.mvel2.sh.Command
    public String getDescription() {
        return "changes the working directory";
    }

    @Override // org.mvel2.sh.Command
    public String getHelp() {
        return "no help yet";
    }
}
