package androidx.car.app.model;

import android.annotation.SuppressLint;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"ListenerInterface"})
public final class ParkedOnlyOnClickListener implements OnClickListener {
    private final OnClickListener mListener;

    @Override // androidx.car.app.model.OnClickListener
    public void onClick() {
        this.mListener.onClick();
    }

    @SuppressLint({"ExecutorRegistration"})
    public static ParkedOnlyOnClickListener create(OnClickListener onClickListener) {
        Objects.requireNonNull(onClickListener);
        return new ParkedOnlyOnClickListener(onClickListener);
    }

    private ParkedOnlyOnClickListener(OnClickListener onClickListener) {
        this.mListener = onClickListener;
    }
}
