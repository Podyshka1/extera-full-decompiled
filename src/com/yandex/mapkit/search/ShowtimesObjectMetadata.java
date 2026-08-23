package com.yandex.mapkit.search;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ShowtimesObjectMetadata implements BaseMetadata, Serializable {
    private NativeObject nativeObject;
    private List<Showtime> showtimes;
    private boolean showtimes__is_initialized;
    private String title;
    private boolean title__is_initialized;

    private native List<Showtime> getShowtimes__Native();

    private native String getTitle__Native();

    private native NativeObject init(String str, List<Showtime> list);

    public ShowtimesObjectMetadata() {
        this.title__is_initialized = false;
        this.showtimes__is_initialized = false;
    }

    public ShowtimesObjectMetadata(String str, List<Showtime> list) {
        this.title__is_initialized = false;
        this.showtimes__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"title\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"showtimes\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, list);
        this.title = str;
        this.title__is_initialized = true;
        this.showtimes = list;
        this.showtimes__is_initialized = true;
    }

    private ShowtimesObjectMetadata(NativeObject nativeObject) {
        this.title__is_initialized = false;
        this.showtimes__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized String getTitle() {
        try {
            if (!this.title__is_initialized) {
                this.title = getTitle__Native();
                this.title__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.title;
    }

    public synchronized List<Showtime> getShowtimes() {
        try {
            if (!this.showtimes__is_initialized) {
                this.showtimes = getShowtimes__Native();
                this.showtimes__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.showtimes;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.title = archive.add(this.title, false);
            this.title__is_initialized = true;
            List<Showtime> listAdd = archive.add((List) this.showtimes, false, (ArchivingHandler) new ClassHandler(Showtime.class));
            this.showtimes = listAdd;
            this.showtimes__is_initialized = true;
            this.nativeObject = init(this.title, listAdd);
            return;
        }
        archive.add(getTitle(), false);
        archive.add((List) getShowtimes(), false, (ArchivingHandler) new ClassHandler(Showtime.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::ShowtimesObjectMetadata";
    }
}
