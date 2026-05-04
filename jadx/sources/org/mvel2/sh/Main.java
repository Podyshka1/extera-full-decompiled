package org.mvel2.sh;

import java.io.File;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes5.dex */
public class Main {
    public static void main(String[] strArr) {
        if (strArr.length != 0) {
            MVEL.evalFile(new File(strArr[0]));
        } else {
            showSplash();
            new ShellSession().run();
        }
    }

    private static void showSplash() {
        System.out.println("\nMVEL-Shell (MVELSH)");
        System.out.println("Copyright (C) 2010, Christopher Brock, The Codehaus");
        System.out.println("Version 2.3.0\n");
    }
}
