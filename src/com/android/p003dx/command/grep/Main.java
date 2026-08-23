package com.android.p003dx.command.grep;

import com.android.dex.Dex;
import java.io.File;
import java.io.PrintWriter;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class Main {
    public static void main(String[] strArr) {
        System.exit(new Grep(new Dex(new File(strArr[0])), Pattern.compile(strArr[1]), new PrintWriter(System.out)).grep() <= 0 ? 1 : 0);
    }
}
