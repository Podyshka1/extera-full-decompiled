package me.vkryl.android.animator;

import android.view.animation.Interpolator;
import java.util.Collections;
import java.util.Iterator;
import me.vkryl.android.animator.ListAnimator;

/* JADX INFO: loaded from: classes.dex */
public class ReplaceAnimator<T> implements Iterable<ListAnimator.Entry<T>> {
    private final ListAnimator<T> list;

    public interface Callback {
        default boolean hasChanges(ReplaceAnimator<?> replaceAnimator) {
            return false;
        }

        default boolean onApplyMetadataAnimation(ReplaceAnimator<?> replaceAnimator, float f) {
            return false;
        }

        default void onFinishMetadataAnimation(ReplaceAnimator<?> replaceAnimator, boolean z) {
        }

        default void onForceApplyChanges(ReplaceAnimator<?> replaceAnimator) {
        }

        void onItemChanged(ReplaceAnimator<?> replaceAnimator);

        default void onPrepareMetadataAnimation(ReplaceAnimator<?> replaceAnimator) {
        }
    }

    public ReplaceAnimator(final Callback callback, Interpolator interpolator, long j) {
        this.list = new ListAnimator<>(new ListAnimator.Callback() { // from class: me.vkryl.android.animator.ReplaceAnimator.1
            @Override // me.vkryl.android.animator.ListAnimator.Callback
            public void onItemsChanged(ListAnimator<?> listAnimator) {
                callback.onItemChanged(ReplaceAnimator.this);
            }

            @Override // me.vkryl.android.animator.ListAnimator.MetadataCallback
            public boolean hasChanges(ListAnimator<?> listAnimator) {
                return callback.hasChanges(ReplaceAnimator.this);
            }

            @Override // me.vkryl.android.animator.ListAnimator.MetadataCallback
            public void onForceApplyChanges(ListAnimator<?> listAnimator) {
                callback.onForceApplyChanges(ReplaceAnimator.this);
            }

            @Override // me.vkryl.android.animator.ListAnimator.MetadataCallback
            public void onPrepareMetadataAnimation(ListAnimator<?> listAnimator) {
                callback.onPrepareMetadataAnimation(ReplaceAnimator.this);
            }

            @Override // me.vkryl.android.animator.ListAnimator.MetadataCallback
            public boolean onApplyMetadataAnimation(ListAnimator<?> listAnimator, float f) {
                return callback.onApplyMetadataAnimation(ReplaceAnimator.this, f);
            }

            @Override // me.vkryl.android.animator.ListAnimator.MetadataCallback
            public void onFinishMetadataAnimation(ListAnimator<?> listAnimator, boolean z) {
                callback.onFinishMetadataAnimation(ReplaceAnimator.this, z);
            }
        }, interpolator, j);
    }

    public void replace(T t, boolean z) {
        this.list.reset(t != null ? Collections.singletonList(t) : null, z);
    }

    public ListAnimator.Metadata getMetadata() {
        return this.list.getMetadata();
    }

    public void clear(boolean z) {
        this.list.clear(z);
    }

    @Override // java.lang.Iterable
    public Iterator<ListAnimator.Entry<T>> iterator() {
        return this.list.iterator();
    }
}
