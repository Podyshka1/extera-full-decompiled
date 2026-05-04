package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.Instant;
import java.util.Date;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class DateRetargetClass {
    public static Instant toInstant(Date date) {
        long time = date.getTime();
        Instant instant = Instant.f403c;
        long j = MediaDataController.MAX_STYLE_RUNS_COUNT;
        return Instant.m465v(AbstractC1965a.m414T(time, j), ((int) AbstractC1965a.m413S(time, j)) * 1000000);
    }
}
