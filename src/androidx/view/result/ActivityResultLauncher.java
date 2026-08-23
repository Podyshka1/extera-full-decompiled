package androidx.view.result;

import android.annotation.SuppressLint;
import androidx.core.app.ActivityOptionsCompat;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActivityResultLauncher<I> {
    public abstract void launch(@SuppressLint({"UnknownNullness"}) I i, ActivityOptionsCompat activityOptionsCompat);

    public abstract void unregister();

    public void launch(@SuppressLint({"UnknownNullness"}) I i) {
        launch(i, null);
    }
}
