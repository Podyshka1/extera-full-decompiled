package com.android.dx.util;

/* JADX INFO: loaded from: classes.dex */
public interface AnnotatedOutput extends Output {
    void annotate(int i, String str);

    void annotate(String str);

    boolean annotates();

    void endAnnotation();

    int getAnnotationWidth();

    boolean isVerbose();
}
