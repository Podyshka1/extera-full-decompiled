package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ToponymPhrase implements Serializable {
    private NativeObject nativeObject;
    private String text;
    private boolean text__is_initialized;

    private native String getText__Native();

    private native NativeObject init(String str);

    public ToponymPhrase() {
        this.text__is_initialized = false;
    }

    public ToponymPhrase(String str) {
        this.text__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"text\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str);
        this.text = str;
        this.text__is_initialized = true;
    }

    private ToponymPhrase(NativeObject nativeObject) {
        this.text__is_initialized = false;
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

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            String strAdd = archive.add(this.text, false);
            this.text = strAdd;
            this.text__is_initialized = true;
            this.nativeObject = init(strAdd);
            return;
        }
        archive.add(getText(), false);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::directions::driving::ToponymPhrase";
    }
}
