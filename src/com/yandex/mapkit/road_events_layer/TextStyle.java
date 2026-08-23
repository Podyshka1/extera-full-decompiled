package com.yandex.mapkit.road_events_layer;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class TextStyle implements Serializable {
    private int color;
    private boolean color__is_initialized;
    private float fontSize;
    private boolean fontSize__is_initialized;
    private NativeObject nativeObject;
    private Integer outlineColor;
    private boolean outlineColor__is_initialized;

    private native int getColor__Native();

    private native float getFontSize__Native();

    private native Integer getOutlineColor__Native();

    private native NativeObject init(float f, int i, Integer num);

    public TextStyle() {
        this.fontSize__is_initialized = false;
        this.color__is_initialized = false;
        this.outlineColor__is_initialized = false;
    }

    public TextStyle(float f, int i, Integer num) {
        this.fontSize__is_initialized = false;
        this.color__is_initialized = false;
        this.outlineColor__is_initialized = false;
        this.nativeObject = init(f, i, num);
        this.fontSize = f;
        this.fontSize__is_initialized = true;
        this.color = i;
        this.color__is_initialized = true;
        this.outlineColor = num;
        this.outlineColor__is_initialized = true;
    }

    private TextStyle(NativeObject nativeObject) {
        this.fontSize__is_initialized = false;
        this.color__is_initialized = false;
        this.outlineColor__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized float getFontSize() {
        try {
            if (!this.fontSize__is_initialized) {
                this.fontSize = getFontSize__Native();
                this.fontSize__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.fontSize;
    }

    public synchronized int getColor() {
        try {
            if (!this.color__is_initialized) {
                this.color = getColor__Native();
                this.color__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.color;
    }

    public synchronized Integer getOutlineColor() {
        try {
            if (!this.outlineColor__is_initialized) {
                this.outlineColor = getOutlineColor__Native();
                this.outlineColor__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.outlineColor;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.fontSize = archive.add(this.fontSize);
            this.fontSize__is_initialized = true;
            this.color = archive.add(this.color);
            this.color__is_initialized = true;
            Integer numAdd = archive.add(this.outlineColor, true);
            this.outlineColor = numAdd;
            this.outlineColor__is_initialized = true;
            this.nativeObject = init(this.fontSize, this.color, numAdd);
            return;
        }
        archive.add(getFontSize());
        archive.add(getColor());
        archive.add(getOutlineColor(), true);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::road_events_layer::TextStyle";
    }
}
