package androidx.car.app.navigation.model;

import androidx.car.app.model.CarIcon;
import androidx.car.app.model.CarText;
import androidx.car.app.navigation.model.NavigationTemplate;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class MessageInfo implements NavigationTemplate.NavigationInfo {
    private final CarIcon mImage;
    private final CarText mText;
    private final CarText mTitle;

    public static final class Builder {
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public CarText getText() {
        return this.mText;
    }

    public CarIcon getImage() {
        return this.mImage;
    }

    public String toString() {
        return "MessageInfo";
    }

    public int hashCode() {
        return Objects.hash(this.mTitle, this.mText, this.mImage);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageInfo)) {
            return false;
        }
        MessageInfo messageInfo = (MessageInfo) obj;
        return Objects.equals(this.mTitle, messageInfo.mTitle) && Objects.equals(this.mText, messageInfo.mText) && Objects.equals(this.mImage, messageInfo.mImage);
    }

    public MessageInfo(Builder builder) {
        throw null;
    }

    private MessageInfo() {
        this.mTitle = null;
        this.mText = null;
        this.mImage = null;
    }
}
