package dagger.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes5.dex */
public final class SetBuilder {
    private final List contributions;

    private SetBuilder(int i) {
        this.contributions = new ArrayList(i);
    }

    public static SetBuilder newSetBuilder(int i) {
        return new SetBuilder(i);
    }

    public SetBuilder add(Object obj) {
        this.contributions.add(Preconditions.checkNotNull(obj, "Set contributions cannot be null"));
        return this;
    }

    public Set build() {
        if (this.contributions.isEmpty()) {
            return Collections.EMPTY_SET;
        }
        if (this.contributions.size() == 1) {
            return Collections.singleton(this.contributions.get(0));
        }
        return DesugarCollections.unmodifiableSet(new HashSet(this.contributions));
    }
}
