package com.exteragram.messenger.plugins.utils;

import java.io.File;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
public class NativeCrashHandler {
    private static final String CRASH_FLAG_FILENAME = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166465190524123L);

    public static native void init(String str);

    public static void checkAndHandleNativeCrash() {
        File file = new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165962679350491L));
        if (file.exists()) {
            FileLog.m1134e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166039988761819L));
            ApplicationLoader.applicationContext.getSharedPreferences(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166276211963099L), 0).edit().putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166344931439835L), true).apply();
            file.delete();
        }
    }

    public static String getCrashFlagPath() {
        return new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986166387881112795L)).getAbsolutePath();
    }
}
