package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.EnumHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Annotation implements Serializable {
    private Action action;
    private ActionMetadata actionMetadata;
    private boolean actionMetadata__is_initialized;
    private boolean action__is_initialized;
    private String descriptionText;
    private boolean descriptionText__is_initialized;
    private List<Landmark> landmarks;
    private boolean landmarks__is_initialized;
    private NativeObject nativeObject;
    private String toponym;
    private ToponymPhrase toponymPhrase;
    private boolean toponymPhrase__is_initialized;
    private boolean toponym__is_initialized;

    private native ActionMetadata getActionMetadata__Native();

    private native Action getAction__Native();

    private native String getDescriptionText__Native();

    private native List<Landmark> getLandmarks__Native();

    private native ToponymPhrase getToponymPhrase__Native();

    private native String getToponym__Native();

    private native NativeObject init(Action action, String str, String str2, ActionMetadata actionMetadata, List<Landmark> list, ToponymPhrase toponymPhrase);

    public Annotation() {
        this.action__is_initialized = false;
        this.toponym__is_initialized = false;
        this.descriptionText__is_initialized = false;
        this.actionMetadata__is_initialized = false;
        this.landmarks__is_initialized = false;
        this.toponymPhrase__is_initialized = false;
    }

    public Annotation(Action action, String str, String str2, ActionMetadata actionMetadata, List<Landmark> list, ToponymPhrase toponymPhrase) {
        this.action__is_initialized = false;
        this.toponym__is_initialized = false;
        this.descriptionText__is_initialized = false;
        this.actionMetadata__is_initialized = false;
        this.landmarks__is_initialized = false;
        this.toponymPhrase__is_initialized = false;
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"descriptionText\" cannot be null");
            throw null;
        }
        if (actionMetadata == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"actionMetadata\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"landmarks\" cannot be null");
            throw null;
        }
        this.nativeObject = init(action, str, str2, actionMetadata, list, toponymPhrase);
        this.action = action;
        this.action__is_initialized = true;
        this.toponym = str;
        this.toponym__is_initialized = true;
        this.descriptionText = str2;
        this.descriptionText__is_initialized = true;
        this.actionMetadata = actionMetadata;
        this.actionMetadata__is_initialized = true;
        this.landmarks = list;
        this.landmarks__is_initialized = true;
        this.toponymPhrase = toponymPhrase;
        this.toponymPhrase__is_initialized = true;
    }

    private Annotation(NativeObject nativeObject) {
        this.action__is_initialized = false;
        this.toponym__is_initialized = false;
        this.descriptionText__is_initialized = false;
        this.actionMetadata__is_initialized = false;
        this.landmarks__is_initialized = false;
        this.toponymPhrase__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Action getAction() {
        try {
            if (!this.action__is_initialized) {
                this.action = getAction__Native();
                this.action__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.action;
    }

    public synchronized String getToponym() {
        try {
            if (!this.toponym__is_initialized) {
                this.toponym = getToponym__Native();
                this.toponym__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.toponym;
    }

    public synchronized String getDescriptionText() {
        try {
            if (!this.descriptionText__is_initialized) {
                this.descriptionText = getDescriptionText__Native();
                this.descriptionText__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.descriptionText;
    }

    public synchronized ActionMetadata getActionMetadata() {
        try {
            if (!this.actionMetadata__is_initialized) {
                this.actionMetadata = getActionMetadata__Native();
                this.actionMetadata__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.actionMetadata;
    }

    public synchronized List<Landmark> getLandmarks() {
        try {
            if (!this.landmarks__is_initialized) {
                this.landmarks = getLandmarks__Native();
                this.landmarks__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.landmarks;
    }

    public synchronized ToponymPhrase getToponymPhrase() {
        try {
            if (!this.toponymPhrase__is_initialized) {
                this.toponymPhrase = getToponymPhrase__Native();
                this.toponymPhrase__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.toponymPhrase;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.action = (Action) archive.add(this.action, true, (Class<Action>) Action.class);
            this.action__is_initialized = true;
            this.toponym = archive.add(this.toponym, true);
            this.toponym__is_initialized = true;
            this.descriptionText = archive.add(this.descriptionText, false);
            this.descriptionText__is_initialized = true;
            this.actionMetadata = (ActionMetadata) archive.add(this.actionMetadata, false, (Class<ActionMetadata>) ActionMetadata.class);
            this.actionMetadata__is_initialized = true;
            this.landmarks = archive.add((List) this.landmarks, false, (ArchivingHandler) new EnumHandler(Landmark.class));
            this.landmarks__is_initialized = true;
            ToponymPhrase toponymPhrase = (ToponymPhrase) archive.add(this.toponymPhrase, true, (Class<ToponymPhrase>) ToponymPhrase.class);
            this.toponymPhrase = toponymPhrase;
            this.toponymPhrase__is_initialized = true;
            this.nativeObject = init(this.action, this.toponym, this.descriptionText, this.actionMetadata, this.landmarks, toponymPhrase);
            return;
        }
        archive.add(getAction(), true, (Class<Action>) Action.class);
        archive.add(getToponym(), true);
        archive.add(getDescriptionText(), false);
        archive.add(getActionMetadata(), false, (Class<ActionMetadata>) ActionMetadata.class);
        archive.add((List) getLandmarks(), false, (ArchivingHandler) new EnumHandler(Landmark.class));
        archive.add(getToponymPhrase(), true, (Class<ToponymPhrase>) ToponymPhrase.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::directions::driving::Annotation";
    }
}
