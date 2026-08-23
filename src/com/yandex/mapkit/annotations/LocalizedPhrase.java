package com.yandex.mapkit.annotations;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.EnumHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class LocalizedPhrase implements Serializable {
    private AnnotationLanguage language;
    private boolean language__is_initialized;
    private NativeObject nativeObject;
    private String text;
    private boolean text__is_initialized;
    private List<SpeakerPhraseToken> tokens;
    private boolean tokens__is_initialized;

    private native AnnotationLanguage getLanguage__Native();

    private native String getText__Native();

    private native List<SpeakerPhraseToken> getTokens__Native();

    private native NativeObject init(List<SpeakerPhraseToken> list, String str, AnnotationLanguage annotationLanguage);

    public LocalizedPhrase() {
        this.tokens__is_initialized = false;
        this.text__is_initialized = false;
        this.language__is_initialized = false;
    }

    public LocalizedPhrase(List<SpeakerPhraseToken> list, String str, AnnotationLanguage annotationLanguage) {
        this.tokens__is_initialized = false;
        this.text__is_initialized = false;
        this.language__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"tokens\" cannot be null");
            throw null;
        }
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"text\" cannot be null");
            throw null;
        }
        if (annotationLanguage == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"language\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list, str, annotationLanguage);
        this.tokens = list;
        this.tokens__is_initialized = true;
        this.text = str;
        this.text__is_initialized = true;
        this.language = annotationLanguage;
        this.language__is_initialized = true;
    }

    private LocalizedPhrase(NativeObject nativeObject) {
        this.tokens__is_initialized = false;
        this.text__is_initialized = false;
        this.language__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<SpeakerPhraseToken> getTokens() {
        try {
            if (!this.tokens__is_initialized) {
                this.tokens = getTokens__Native();
                this.tokens__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.tokens;
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

    public synchronized AnnotationLanguage getLanguage() {
        try {
            if (!this.language__is_initialized) {
                this.language = getLanguage__Native();
                this.language__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.language;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.tokens = archive.add((List) this.tokens, false, (ArchivingHandler) new EnumHandler(SpeakerPhraseToken.class));
            this.tokens__is_initialized = true;
            this.text = archive.add(this.text, false);
            this.text__is_initialized = true;
            AnnotationLanguage annotationLanguage = (AnnotationLanguage) archive.add(this.language, false, (Class<AnnotationLanguage>) AnnotationLanguage.class);
            this.language = annotationLanguage;
            this.language__is_initialized = true;
            this.nativeObject = init(this.tokens, this.text, annotationLanguage);
            return;
        }
        archive.add((List) getTokens(), false, (ArchivingHandler) new EnumHandler(SpeakerPhraseToken.class));
        archive.add(getText(), false);
        archive.add(getLanguage(), false, (Class<AnnotationLanguage>) AnnotationLanguage.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::annotations::LocalizedPhrase";
    }
}
