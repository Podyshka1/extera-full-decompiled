package androidx.mediarouter.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes3.dex */
final class SystemRoutingUsingMediaRouter2Receiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
    }

    public static boolean isDeclared(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemRoutingUsingMediaRouter2Receiver.class);
        intent.setPackage(context.getPackageName());
        return context.getPackageManager().queryBroadcastReceivers(intent, 0).size() > 0;
    }
}
