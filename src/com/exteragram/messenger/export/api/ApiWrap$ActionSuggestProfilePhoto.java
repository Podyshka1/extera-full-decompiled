package com.exteragram.messenger.export.api;

import com.android.tools.p007r8.RecordTag;
import com.exteragram.messenger.export.output.html.HtmlWriter;
import com.exteragram.messenger.p008ai.p009ui.AbstractC1011x1d8a54ff;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ApiWrap$ActionSuggestProfilePhoto extends RecordTag {
    private final HtmlWriter.Photo photo;

    private /* synthetic */ boolean $record$equals(Object obj) {
        return (obj instanceof ApiWrap$ActionSuggestProfilePhoto) && Objects.equals(this.photo, ((ApiWrap$ActionSuggestProfilePhoto) obj).photo);
    }

    private /* synthetic */ Object[] $record$getFieldsAsObjects() {
        return new Object[]{this.photo};
    }

    public ApiWrap$ActionSuggestProfilePhoto(HtmlWriter.Photo photo) {
        this.photo = photo;
    }

    public final boolean equals(Object obj) {
        return $record$equals(obj);
    }

    public final int hashCode() {
        return Objects.hashCode(this.photo);
    }

    public HtmlWriter.Photo photo() {
        return this.photo;
    }

    public final String toString() {
        return AbstractC1011x1d8a54ff.m224m($record$getFieldsAsObjects(), ApiWrap$ActionSuggestProfilePhoto.class, "photo");
    }
}
