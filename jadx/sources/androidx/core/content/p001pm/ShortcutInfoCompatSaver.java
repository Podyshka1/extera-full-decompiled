package androidx.core.content.p001pm;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class ShortcutInfoCompatSaver {

    /* JADX INFO: loaded from: classes4.dex */
    public static class NoopImpl extends ShortcutInfoCompatSaver {
        @Override // androidx.core.content.p001pm.ShortcutInfoCompatSaver
        public Void addShortcuts(List list) {
            return null;
        }

        @Override // androidx.core.content.p001pm.ShortcutInfoCompatSaver
        public Void removeAllShortcuts() {
            return null;
        }

        @Override // androidx.core.content.p001pm.ShortcutInfoCompatSaver
        public Void removeShortcuts(List list) {
            return null;
        }
    }

    public abstract Object addShortcuts(List list);

    public abstract Object removeAllShortcuts();

    public abstract Object removeShortcuts(List list);

    public List getShortcuts() {
        return new ArrayList();
    }
}
