package androidx.camera.core.impl;

import android.util.ArrayMap;
import androidx.camera.core.impl.Config;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class MutableOptionsBundle extends OptionsBundle implements MutableConfig {
    private static final Config.OptionPriority DEFAULT_PRIORITY = Config.OptionPriority.OPTIONAL;

    private MutableOptionsBundle(TreeMap treeMap) {
        super(treeMap);
    }

    public static MutableOptionsBundle create() {
        return new MutableOptionsBundle(new TreeMap(OptionsBundle.ID_COMPARE));
    }

    public static MutableOptionsBundle from(Config config) {
        TreeMap treeMap = new TreeMap(OptionsBundle.ID_COMPARE);
        for (Config.Option option : config.listOptions()) {
            Set<Config.OptionPriority> priorities = config.getPriorities(option);
            ArrayMap arrayMap = new ArrayMap();
            for (Config.OptionPriority optionPriority : priorities) {
                arrayMap.put(optionPriority, config.retrieveOptionWithPriority(option, optionPriority));
            }
            treeMap.put(option, arrayMap);
        }
        return new MutableOptionsBundle(treeMap);
    }

    public Object removeOption(Config.Option option) {
        return this.mOptions.remove(option);
    }

    @Override // androidx.camera.core.impl.MutableConfig
    public void insertOption(Config.Option option, Object obj) {
        insertOption(option, DEFAULT_PRIORITY, obj);
    }

    @Override // androidx.camera.core.impl.MutableConfig
    public void insertOption(Config.Option option, Config.OptionPriority optionPriority, Object obj) {
        Map map = (Map) this.mOptions.get(option);
        if (map == null) {
            ArrayMap arrayMap = new ArrayMap();
            this.mOptions.put(option, arrayMap);
            arrayMap.put(optionPriority, obj);
            return;
        }
        Config.OptionPriority optionPriority2 = (Config.OptionPriority) Collections.min(map.keySet());
        if (!Objects.equals(map.get(optionPriority2), obj) && Config.CC.hasConflict(optionPriority2, optionPriority)) {
            throw new IllegalArgumentException("Option values conflicts: " + option.getId() + ", existing value (" + optionPriority2 + ")=" + map.get(optionPriority2) + ", conflicting (" + optionPriority + ")=" + obj);
        }
        map.put(optionPriority, obj);
    }
}
