package com.yandex.mapkit.search;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class WorkingHours implements Serializable {
    private List<Availability> availabilities;
    private boolean availabilities__is_initialized;
    private NativeObject nativeObject;
    private State state;
    private boolean state__is_initialized;
    private String text;
    private boolean text__is_initialized;

    private native List<Availability> getAvailabilities__Native();

    private native State getState__Native();

    private native String getText__Native();

    private native NativeObject init(String str, List<Availability> list, State state);

    public WorkingHours() {
        this.text__is_initialized = false;
        this.availabilities__is_initialized = false;
        this.state__is_initialized = false;
    }

    public WorkingHours(String str, List<Availability> list, State state) {
        this.text__is_initialized = false;
        this.availabilities__is_initialized = false;
        this.state__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"text\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"availabilities\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, list, state);
        this.text = str;
        this.text__is_initialized = true;
        this.availabilities = list;
        this.availabilities__is_initialized = true;
        this.state = state;
        this.state__is_initialized = true;
    }

    private WorkingHours(NativeObject nativeObject) {
        this.text__is_initialized = false;
        this.availabilities__is_initialized = false;
        this.state__is_initialized = false;
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

    public synchronized List<Availability> getAvailabilities() {
        try {
            if (!this.availabilities__is_initialized) {
                this.availabilities = getAvailabilities__Native();
                this.availabilities__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.availabilities;
    }

    public synchronized State getState() {
        try {
            if (!this.state__is_initialized) {
                this.state = getState__Native();
                this.state__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.state;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.text = archive.add(this.text, false);
            this.text__is_initialized = true;
            this.availabilities = archive.add((List) this.availabilities, false, (ArchivingHandler) new ClassHandler(Availability.class));
            this.availabilities__is_initialized = true;
            State state = (State) archive.add(this.state, true, (Class<State>) State.class);
            this.state = state;
            this.state__is_initialized = true;
            this.nativeObject = init(this.text, this.availabilities, state);
            return;
        }
        archive.add(getText(), false);
        archive.add((List) getAvailabilities(), false, (ArchivingHandler) new ClassHandler(Availability.class));
        archive.add(getState(), true, (Class<State>) State.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::WorkingHours";
    }
}
