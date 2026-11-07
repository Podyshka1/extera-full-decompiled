package ru.noties.jlatexmath;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Typeface;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class JLatexMathAndroid {
    private static final String BASE = "org/scilab/forge/jlatexmath/";

    @SuppressLint({"StaticFieldLeak"})
    private static Context sContext;

    public static void init(Context context) {
        sContext = context.getApplicationContext();
    }

    public static InputStream getResourceAsStream(String str) {
        try {
            return context().getAssets().open(BASE + str);
        } catch (IOException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m899m(e);
            return null;
        }
    }

    public static Typeface loadTypeface(String str) {
        return Typeface.createFromAsset(context().getAssets(), BASE + str);
    }

    private JLatexMathAndroid() {
    }

    private static Context context() {
        Context context = sContext;
        if (context != null) {
            return context;
        }
        f$$ExternalSyntheticBUOutline2.m213m("Please call `#init(Context)` method to initialize jLatexMath");
        return null;
    }
}
