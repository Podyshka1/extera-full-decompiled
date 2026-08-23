package androidx.car.app.model;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class TabContents {
    public static final String CONTENT_ID = "TAB_CONTENTS_CONTENT_ID";
    private final Template mTemplate;

    public static final class Builder {
    }

    public String getContentId() {
        return CONTENT_ID;
    }

    public Template getTemplate() {
        Template template = this.mTemplate;
        Objects.requireNonNull(template);
        return template;
    }

    public String toString() {
        return "[template: " + this.mTemplate + "]";
    }

    public int hashCode() {
        return Objects.hash(this.mTemplate);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TabContents) {
            return Objects.equals(this.mTemplate, ((TabContents) obj).mTemplate);
        }
        return false;
    }

    public TabContents(Builder builder) {
        throw null;
    }

    private TabContents() {
        this.mTemplate = null;
    }
}
