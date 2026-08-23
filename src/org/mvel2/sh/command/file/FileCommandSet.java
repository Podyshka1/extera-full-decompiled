package org.mvel2.sh.command.file;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.sh.Command;
import org.mvel2.sh.CommandSet;

/* JADX INFO: loaded from: classes5.dex */
public class FileCommandSet implements CommandSet {
    @Override // org.mvel2.sh.CommandSet
    public Map<String, Command> load() {
        HashMap map = new HashMap();
        map.put("ls", new DirList());
        map.put("cd", new ChangeWorkingDir());
        map.put("pwd", new PrintWorkingDirectory());
        return map;
    }
}
