package androidx.mediarouter.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
abstract class SystemRoutingUsingMediaRouter2Receiver extends BroadcastReceiver {
    public static boolean isDeclared(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemRoutingUsingMediaRouter2Receiver.class);
        intent.setPackage(context.getPackageName());
        return context.getPackageManager().queryBroadcastReceivers(intent, 0).size() > 0;
    }
}
