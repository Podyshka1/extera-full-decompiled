package com.exteragram.messenger.utils.system;

import android.app.Application;
import android.os.Build;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006R!\u0010\u000b\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u0012\u0004\b\n\u0010\u0003\u001a\u0004\b\t\u0010\u0006R\u001a\u0010\r\u001a\u00020\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\u0003\u001a\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/utils/system/AppProcess;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "readName", "()Ljava/lang/String;", "name$delegate", "Lkotlin/Lazy;", "getName", "getName$annotations", "name", _UrlKt.FRAGMENT_ENCODE_SET, "isPluginAnalyzer", "()Z", "isPluginAnalyzer$annotations", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAppProcess.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppProcess.kt\ncom/exteragram/messenger/utils/system/AppProcess\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"})
public final class AppProcess {
    public static final AppProcess INSTANCE = new AppProcess();

    /* JADX INFO: renamed from: name$delegate, reason: from kotlin metadata */
    private static final Lazy name = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.utils.system.AppProcess$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AppProcess.INSTANCE.readName();
        }
    });

    private AppProcess() {
    }

    public static final String getName() {
        return (String) name.getValue();
    }

    public static final boolean isPluginAnalyzer() {
        return StringsKt.endsWith$default(getName(), ":analyzer", false, 2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String readName() {
        if (Build.VERSION.SDK_INT >= 28) {
            String processName = Application.getProcessName();
            return processName == null ? _UrlKt.FRAGMENT_ENCODE_SET : processName;
        }
        try {
            byte[] bytes = FilesKt.readBytes(new File("/proc/self/cmdline"));
            int iIndexOf = ArraysKt.indexOf(bytes, (byte) 0);
            if (iIndexOf < 0) {
                iIndexOf = bytes.length;
            }
            return new String(bytes, 0, iIndexOf, Charsets.UTF_8);
        } catch (Exception unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }
}
