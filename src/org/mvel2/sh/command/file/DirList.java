package org.mvel2.sh.command.file;

import java.io.File;
import org.mvel2.sh.Command;
import org.mvel2.sh.CommandException;
import org.mvel2.sh.ShellSession;

/* JADX INFO: loaded from: classes5.dex */
public class DirList implements Command {
    @Override // org.mvel2.sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        File file = new File(shellSession.getEnv().get("$CWD"));
        if (!file.isDirectory()) {
            throw new CommandException("cannot list directory : " + shellSession.getEnv().get("$CWD") + " is not a directory");
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles.length == 0) {
            return null;
        }
        System.out.append((CharSequence) "Total ").append((CharSequence) String.valueOf(fileArrListFiles.length)).append((CharSequence) "\n");
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                System.out.append((CharSequence) file2.getName()).append((CharSequence) "/");
            } else {
                System.out.append((CharSequence) file2.getName());
            }
            System.out.append((CharSequence) "\n");
        }
        System.out.flush();
        return null;
    }

    @Override // org.mvel2.sh.Command
    public String getDescription() {
        return "performs a list of files and directories in the current working dir.";
    }

    @Override // org.mvel2.sh.Command
    public String getHelp() {
        return "no help yet";
    }
}
