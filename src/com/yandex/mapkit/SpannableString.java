package com.yandex.mapkit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class SpannableString implements Serializable {
    private NativeObject nativeObject;
    private List<Span> spans;
    private boolean spans__is_initialized;
    private String text;
    private boolean text__is_initialized;

    private native List<Span> getSpans__Native();

    private native String getText__Native();

    private native NativeObject init(String str, List<Span> list);

    public static class Span implements Serializable {
        private int begin;
        private int end;

        public Span(int i, int i2) {
            this.begin = i;
            this.end = i2;
        }

        public Span() {
        }

        public int getBegin() {
            return this.begin;
        }

        public int getEnd() {
            return this.end;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.begin = archive.add(this.begin);
            this.end = archive.add(this.end);
        }
    }

    public SpannableString() {
        this.text__is_initialized = false;
        this.spans__is_initialized = false;
    }

    public SpannableString(String str, List<Span> list) {
        this.text__is_initialized = false;
        this.spans__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"text\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"spans\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, list);
        this.text = str;
        this.text__is_initialized = true;
        this.spans = list;
        this.spans__is_initialized = true;
    }

    private SpannableString(NativeObject nativeObject) {
        this.text__is_initialized = false;
        this.spans__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized String getText() {
        try {
            if (!this.text__is_initialized) {
                this.text = getText__Native();
                this.text__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.text;
    }

    public synchronized List<Span> getSpans() {
        try {
            if (!this.spans__is_initialized) {
                this.spans = getSpans__Native();
                this.spans__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.spans;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.text = archive.add(this.text, false);
            this.text__is_initialized = true;
            List<Span> listAdd = archive.add((List) this.spans, false, (ArchivingHandler) new ClassHandler(Span.class));
            this.spans = listAdd;
            this.spans__is_initialized = true;
            this.nativeObject = init(this.text, listAdd);
            return;
        }
        archive.add(getText(), false);
        archive.add((List) getSpans(), false, (ArchivingHandler) new ClassHandler(Span.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::SpannableString";
    }
}
