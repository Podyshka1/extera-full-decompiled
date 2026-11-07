package androidx.car.app.model;

import androidx.car.app.model.constraints.TabContentsConstraints;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class TabContents {
    public static final String CONTENT_ID = "TAB_CONTENTS_CONTENT_ID";
    private final Template mTemplate;

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
        this.mTemplate = builder.mTemplate;
    }

    private TabContents() {
        this.mTemplate = null;
    }

    public static final class Builder {
        Template mTemplate;

        public TabContents build() {
            return new TabContents(this);
        }

        public Builder(Template template) {
            TabContentsConstraints tabContentsConstraints = TabContentsConstraints.API_7;
            Objects.requireNonNull(template);
            tabContentsConstraints.validateOrThrow(template);
            this.mTemplate = template;
        }
    }
}
