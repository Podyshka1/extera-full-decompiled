package androidx.camera.core.impl;

import android.util.ArrayMap;
import androidx.camera.core.impl.Config;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public class OptionsBundle implements Config {
    private static final OptionsBundle EMPTY_BUNDLE;
    protected static final Comparator ID_COMPARE;
    protected final TreeMap mOptions;

    static {
        Comparator comparator = new Comparator() { // from class: androidx.camera.core.impl.OptionsBundle$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((Config.Option) obj).getId().compareTo(((Config.Option) obj2).getId());
            }
        };
        ID_COMPARE = comparator;
        EMPTY_BUNDLE = new OptionsBundle(new TreeMap(comparator));
    }

    OptionsBundle(TreeMap treeMap) {
        this.mOptions = treeMap;
    }

    public static OptionsBundle from(Config config) {
        if (OptionsBundle.class.equals(config.getClass())) {
            return (OptionsBundle) config;
        }
        TreeMap treeMap = new TreeMap(ID_COMPARE);
        for (Config.Option option : config.listOptions()) {
            Set<Config.OptionPriority> priorities = config.getPriorities(option);
            ArrayMap arrayMap = new ArrayMap();
            for (Config.OptionPriority optionPriority : priorities) {
                arrayMap.put(optionPriority, config.retrieveOptionWithPriority(option, optionPriority));
            }
            treeMap.put(option, arrayMap);
        }
        return new OptionsBundle(treeMap);
    }

    public static OptionsBundle emptyBundle() {
        return EMPTY_BUNDLE;
    }

    @Override // androidx.camera.core.impl.Config
    public Set listOptions() {
        return DesugarCollections.unmodifiableSet(this.mOptions.keySet());
    }

    @Override // androidx.camera.core.impl.Config
    public boolean containsOption(Config.Option option) {
        return this.mOptions.containsKey(option);
    }

    @Override // androidx.camera.core.impl.Config
    public Object retrieveOption(Config.Option option) {
        Map map = (Map) this.mOptions.get(option);
        if (map == null) {
            throw new IllegalArgumentException("Option does not exist: " + option);
        }
        return map.get((Config.OptionPriority) Collections.min(map.keySet()));
    }

    @Override // androidx.camera.core.impl.Config
    public Object retrieveOption(Config.Option option, Object obj) {
        Map map = (Map) this.mOptions.get(option);
        return map == null ? obj : map.get((Config.OptionPriority) Collections.min(map.keySet()));
    }

    @Override // androidx.camera.core.impl.Config
    public Object retrieveOptionWithPriority(Config.Option option, Config.OptionPriority optionPriority) {
        Map map = (Map) this.mOptions.get(option);
        if (map == null) {
            throw new IllegalArgumentException("Option does not exist: " + option);
        }
        if (!map.containsKey(optionPriority)) {
            throw new IllegalArgumentException("Option does not exist: " + option + " with priority=" + optionPriority);
        }
        return map.get(optionPriority);
    }

    @Override // androidx.camera.core.impl.Config
    public Config.OptionPriority getOptionPriority(Config.Option option) {
        Map map = (Map) this.mOptions.get(option);
        if (map == null) {
            throw new IllegalArgumentException("Option does not exist: " + option);
        }
        return (Config.OptionPriority) Collections.min(map.keySet());
    }

    @Override // androidx.camera.core.impl.Config
    public void findOptions(String str, Config.OptionMatcher optionMatcher) {
        for (Map.Entry entry : this.mOptions.tailMap(Config.Option.create(str, Void.class)).entrySet()) {
            if (!((Config.Option) entry.getKey()).getId().startsWith(str) || !optionMatcher.onOptionMatched((Config.Option) entry.getKey())) {
                return;
            }
        }
    }

    @Override // androidx.camera.core.impl.Config
    public Set getPriorities(Config.Option option) {
        Map map = (Map) this.mOptions.get(option);
        if (map == null) {
            return Collections.EMPTY_SET;
        }
        return DesugarCollections.unmodifiableSet(map.keySet());
    }
}
