package io.noties.markwon;

import com.android.dx.DexMaker$$ExternalSyntheticBUOutline0;
import io.noties.markwon.MarkwonPlugin;
import io.noties.markwon.core.CorePlugin;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
class RegistryImpl implements MarkwonPlugin.Registry {
    private final List<MarkwonPlugin> origin;
    private final Set<MarkwonPlugin> pending = new HashSet(3);
    private final List<MarkwonPlugin> plugins;

    public RegistryImpl(List<MarkwonPlugin> list) {
        this.origin = list;
        this.plugins = new ArrayList(list.size());
    }

    @Override // io.noties.markwon.MarkwonPlugin.Registry
    public <P extends MarkwonPlugin> P require(Class<P> cls) {
        return (P) get(cls);
    }

    public List<MarkwonPlugin> process() {
        Iterator<MarkwonPlugin> it = this.origin.iterator();
        while (it.hasNext()) {
            configure(it.next());
        }
        return this.plugins;
    }

    private void configure(MarkwonPlugin markwonPlugin) {
        if (this.plugins.contains(markwonPlugin)) {
            return;
        }
        boolean zContains = this.pending.contains(markwonPlugin);
        Set<MarkwonPlugin> set = this.pending;
        if (zContains) {
            DexMaker$$ExternalSyntheticBUOutline0.m186m("Cyclic dependency chain found: ", set);
            return;
        }
        set.add(markwonPlugin);
        markwonPlugin.configure(this);
        this.pending.remove(markwonPlugin);
        if (this.plugins.contains(markwonPlugin)) {
            return;
        }
        boolean zIsAssignableFrom = CorePlugin.class.isAssignableFrom(markwonPlugin.getClass());
        List<MarkwonPlugin> list = this.plugins;
        if (zIsAssignableFrom) {
            list.add(0, markwonPlugin);
        } else {
            list.add(markwonPlugin);
        }
    }

    private <P extends MarkwonPlugin> P get(Class<P> cls) {
        P p = (P) find(this.plugins, cls);
        if (p != null) {
            return p;
        }
        P p2 = (P) find(this.origin, cls);
        if (p2 == null) {
            RegistryImpl$$ExternalSyntheticBUOutline0.m477m("Requested plugin is not added: ", cls.getName(), ", plugins: ", this.origin);
            return null;
        }
        configure(p2);
        return p2;
    }

    private static <P extends MarkwonPlugin> P find(List<MarkwonPlugin> list, Class<P> cls) {
        Iterator<MarkwonPlugin> it = list.iterator();
        while (it.hasNext()) {
            P p = (P) it.next();
            if (cls.isAssignableFrom(p.getClass())) {
                return p;
            }
        }
        return null;
    }
}
