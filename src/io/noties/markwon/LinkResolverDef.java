package io.noties.markwon;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public class LinkResolverDef implements LinkResolver {
    @Override // io.noties.markwon.LinkResolver
    public void resolve(View view, String str) {
        Uri link = parseLink(str);
        Context context = view.getContext();
        Intent intent = new Intent("android.intent.action.VIEW", link);
        intent.putExtra("com.android.browser.application_id", context.getPackageName());
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            Log.w("LinkResolverDef", "Actvity was not found for the link: '" + str + "'");
        }
    }

    private static Uri parseLink(String str) {
        Uri uri = Uri.parse(str);
        return TextUtils.isEmpty(uri.getScheme()) ? uri.buildUpon().scheme("https").build() : uri;
    }
}
