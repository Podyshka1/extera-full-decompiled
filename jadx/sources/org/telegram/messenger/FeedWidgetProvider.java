package org.telegram.messenger;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.RemoteViews;
import org.telegram.p029ui.LaunchActivity;

/* JADX INFO: loaded from: classes5.dex */
public class FeedWidgetProvider extends AppWidgetProvider {
    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        super.onUpdate(context, appWidgetManager, iArr);
        for (int i : iArr) {
            updateWidget(context, appWidgetManager, i);
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(Context context, int[] iArr) {
        super.onDeleted(context, iArr);
        for (int i = 0; i < iArr.length; i++) {
            context.getSharedPreferences("shortcut_widget", 0).edit().remove("account" + iArr[i]).remove("dialogId" + iArr[i]).apply();
        }
    }

    public static void updateWidget(Context context, AppWidgetManager appWidgetManager, int i) {
        Intent intent = new Intent(context, (Class<?>) FeedWidgetService.class);
        intent.putExtra("appWidgetId", i);
        intent.setData(Uri.parse(intent.toUri(1)));
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), C2888R.layout.feed_widget_layout);
        remoteViews.setRemoteAdapter(C2888R.id.list_view, intent);
        remoteViews.setEmptyView(C2888R.id.list_view, C2888R.id.empty_view);
        Intent intent2 = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
        intent2.setAction("com.tmessages.openchat" + Math.random() + Integer.MAX_VALUE);
        intent2.addFlags(67108864);
        intent2.addCategory("android.intent.category.LAUNCHER");
        remoteViews.setPendingIntentTemplate(C2888R.id.list_view, PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent2, 167772160));
        appWidgetManager.updateAppWidget(i, remoteViews);
    }
}
