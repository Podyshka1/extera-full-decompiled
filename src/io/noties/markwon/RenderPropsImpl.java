package io.noties.markwon;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
class RenderPropsImpl implements RenderProps {
    private final Map<Prop, Object> values = new HashMap(3);

    @Override // io.noties.markwon.RenderProps
    public <T> T get(Prop<T> prop) {
        return (T) this.values.get(prop);
    }

    @Override // io.noties.markwon.RenderProps
    public <T> void set(Prop<T> prop, T t) {
        Map<Prop, Object> map = this.values;
        if (t == null) {
            map.remove(prop);
        } else {
            map.put(prop, t);
        }
    }
}
