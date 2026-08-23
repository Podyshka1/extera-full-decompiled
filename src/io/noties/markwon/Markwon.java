package io.noties.markwon;

import android.content.Context;
import android.text.Spanned;
import android.widget.TextView;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Markwon {

    public interface Builder {
        Markwon build();

        Builder usePlugin(MarkwonPlugin markwonPlugin);
    }

    public interface TextSetter {
    }

    public abstract void setParsedMarkdown(TextView textView, Spanned spanned);

    public abstract Spanned toMarkdown(String str);

    public static Builder builderNoCore(Context context) {
        return new MarkwonBuilderImpl(context);
    }
}
