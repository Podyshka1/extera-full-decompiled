package org.mvel2.sh;

/* JADX INFO: loaded from: classes5.dex */
public interface Command {
    Object execute(ShellSession shellSession, String[] strArr);

    String getDescription();

    String getHelp();
}
