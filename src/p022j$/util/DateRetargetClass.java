package p022j$.util;

import java.util.Date;
import org.telegram.messenger.MediaDataController;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.Instant;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class DateRetargetClass {
    public static Instant toInstant(Date date) {
        long time = date.getTime();
        Instant instant = Instant.f635c;
        long j = MediaDataController.MAX_STYLE_RUNS_COUNT;
        return Instant.m585v(AbstractC2104a.m534T(time, j), ((int) AbstractC2104a.m533S(time, j)) * 1000000);
    }
}
