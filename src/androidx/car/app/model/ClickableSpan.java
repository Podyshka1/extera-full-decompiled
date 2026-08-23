package androidx.car.app.model;

import android.annotation.SuppressLint;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class ClickableSpan extends CarSpan {
    private final OnClickDelegate mOnClickDelegate;

    @SuppressLint({"ExecutorRegistration"})
    public static ClickableSpan create(OnClickListener onClickListener) {
        Objects.requireNonNull(onClickListener);
        return new ClickableSpan(onClickListener);
    }

    public OnClickDelegate getOnClickDelegate() {
        OnClickDelegate onClickDelegate = this.mOnClickDelegate;
        Objects.requireNonNull(onClickDelegate);
        return onClickDelegate;
    }

    public String toString() {
        return "[clickable]";
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.mOnClickDelegate == null));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClickableSpan)) {
            return false;
        }
        return Boolean.valueOf(this.mOnClickDelegate == null).equals(Boolean.valueOf(((ClickableSpan) obj).mOnClickDelegate == null));
    }

    private ClickableSpan(OnClickListener onClickListener) {
        this.mOnClickDelegate = OnClickDelegateImpl.create(onClickListener);
    }

    private ClickableSpan() {
        this.mOnClickDelegate = null;
    }
}
